class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable ,:omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  has_one :wishlist
  
  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end   
  
  def username
    return email.split("@")[0].capitalize
  end
end
