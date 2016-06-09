class User < ActiveRecord::Base
  has_one :wallets, :dependent => :destroy
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  before_validation  :set_provider 
  def set_provider 
    self.provider = email if provider.blank?
  end

  before_validation :set_uid

  def set_uid 
    self.uid = email if uid.blank?
  end

end
