class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :books, dependent: :destroy
  has_one_attached :profile_image
  
  # name：一意性を持たせ、かつ2～20文字の範囲で設定してください。
  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 20}
  
  # introduction：最大50文字までに設定してください。
  validates :introduction, length: {maximum: 50}
  
end
