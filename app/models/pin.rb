class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "1100x1100>", :thumb => "300x300>"}	
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates :description, presence: true
	validates :image, presence: true
	has_many :comments
end
