class User < ActiveRecord::Base
#  cattr_accessor :current_user
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at
  has_one :tax_entity, :dependent => :destroy
  #has_one :vendor, :dependent => :destroy
  has_many :customers, :dependent => :destroy


  def can_create_invoices?
    return false unless customers.any? {|c| c.valid? }
    return false unless tax_entity.valid?
    #check if we have valid digital certificates and stuff
    return true
  end

end
