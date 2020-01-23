class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :facilities

  validates :name, length: { :minimum => 2, :maximum => 20 }

  def self.search(search) #ここでのself.はStore.を意味する
    if search
      where(['store_name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。Store.は省略
    else
      all #全て表示。Store.は省略
    end
  end
  

  def update_without_current_password(params, *options)
  	params.delete(:current_password)
  	if params[:password].blank? && params[:password_confirmation].blank?
  		params.delete(:password)
  		params.delete(:password_confirmation)
    end
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

end
