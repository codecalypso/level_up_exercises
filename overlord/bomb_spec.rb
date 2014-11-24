require_relative "bomb"
describe Bomb do 
  let(:bomb) { Bomb.new }
  it "initial state should be inactive" do
    bomb
  end
 
  it"should be active with valid code"do
    bomb.activate(2342)
    bomb.should be_active
  end

  it"should be inactive with invalid code"do
    bomb.activate(1111)
    bomb.should_not be_active
  end

  it"should be inactive with valid code on deactivation attempt"do
    bomb.activate(2342)
    bomb.deactivate(0000)
    bomb.should_not be_active
  end

  it"should remain active with failed deactivation attempts"do
    bomb.activate(2342)
    @attempt = bomb.deactivate(4567)
    bomb.should be_active
  end

  xit"should explode on three failed attempts"do
    bomb.activate(2342)
    @attempts = bomb.deactivate(9111)
    @failed_attempt = 0
    expect{@attempts}.to change{@failed_attempts}.by(2)
  end

  xit "should only accept numbers" do |code|
    bomb.activate(code).to_i
  end
  
end