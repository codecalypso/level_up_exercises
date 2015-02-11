class Bill < ActiveRecord::Base
  scope :search, -> (query)  {where("LOWER(official_title) like ?", "%#{query.downcase}%") if query.present?}
end
