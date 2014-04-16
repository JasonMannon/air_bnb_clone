class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def deliver_signup_confirmation(user)
    @greeting = "Hi"
    @user = user


    mail to: @user.email, subject: "Sign Up Confirmation"
  end

  def comment_confirmation(comment)
    @greeting = "Howdy"
    @comment = comment

    mail cc: "admin@airbnb.com"
    mail to: @comment.owner.email, subject: "Comment Confirmation"
  end
end




