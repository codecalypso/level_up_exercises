class Bill < ActiveRecord::Base



  def self.search(query)
    where("official_title like ?", "%#{query}%")
  end

end
