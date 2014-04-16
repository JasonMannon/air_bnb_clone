class Comment < ActiveRecord::Base
  belongs_to :owner

  after_create :comment_confirmation_email

  private
    def comment_confirmation_email
      UserMailer.comment_confirmation(self).deliver
    end
end
