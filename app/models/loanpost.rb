class Loanpost < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>" }
	has_attached_file :image2, :styles => { :medium => "300x300>" }
	has_attached_file :image3, :styles => { :medium => "300x300>" }
	has_attached_file :image4, :styles => { :medium => "300x300>" }

	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :image4, :content_type => /\Aimage\/.*\Z/

	validates :phone, :occupation, :income, :homephone, :facebook, :email, :image, :image2, :image3, :image4, presence: true
end
