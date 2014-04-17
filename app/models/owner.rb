class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :comments
  has_many :listings
  has_many :photos, through: :listing
  has_many :listings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_confirmation_email

  private
    def send_confirmation_email
      UserMailer.deliver_signup_confirmation(self).deliver
    end
end



