class Agent < ApplicationRecord
  has_many :docs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :name, presence: true
  validates :phone, numericality: { only_integer: true }, length: { minimum: 10 }
    
end


class Agent::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:name, :country, :phone, :email, :password, :password_confirmation])
  end
end