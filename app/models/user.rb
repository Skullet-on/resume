class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", small: "150x150#", thumb: "50x50#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :exp, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }, allow_nil: true


  has_many :skills
  has_many :employs
  has_many :educations
  has_many :courses
  has_many :languages
end
