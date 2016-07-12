class Picture < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  validates :image, :celebrity, :location, :comment, presence: true

  scope :celeb_name, -> (celebrity) { where("celebrity ILIKE ?", "#{celebrity}%")}
end
