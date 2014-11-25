class Bomb

  attr_reader :active, :exploded
  alias_method :active?, :active
  alias_method :exploded?, :exploded

  ACTIVATION_CODE = "2342"
  DEACTIVATION_CODE = "0000"

  def initialize
    @activation_code = ACTIVATION_CODE
    @deactivation_code = DEACTIVATION_CODE
    @failed_attempts = 0
    @active = false
    @exploded = false
  end

  def activate(attempt)
    @active = true if valid_code?(attempt) == @activation_code
  end

  def deactivate(attempt)
    if valid_code?(attempt) == @deactivation_code
      @active = false
    else
      increment_attempts
    end
  end
  
  private

   def explode
    @exploded = true
    @active = false
  end

  def increment_attempts
    @failed_attempts += 1
    explode if @failed_attempts >= 3
  end

  def valid_code?(code)
    regex = /\A[0-9]{4}\Z/
    regex.match(code) ? code : false
  end
end