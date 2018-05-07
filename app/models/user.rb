class User < ApplicationRecord
  after_create :create_profile
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shopping_lists
   #when someone makes a list
  
  def chores
    ShoppingList.where(shopper: self, delivered_at: nil)
  end

  def completed_chores
    ShoppingList.where(shopper: self).where.not(delivered_at: nil)
  end


  def create_profile
    Profile.create!({
      user_id: self.id
    })
  end

  
end
