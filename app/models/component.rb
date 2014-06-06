class Component < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  def self.search(query)
  	where("company ILIKE ? OR name ILIKE ?", "%#{query}%", "%#{query}%") 
  end
end