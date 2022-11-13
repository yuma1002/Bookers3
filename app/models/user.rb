class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        # :trackable,
   has_many  :books, dependent: :destroy
   
   validates :name, uniqueness: true,length: {in: 2..20}
   validates :introduction,length: { maximum: 50}
   
   has_one_attached :profile_image
  # attachment :profile_image

   
  def email_required?
   false
  end
  def email_changed?
   false
  end
  
end
