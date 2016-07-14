require_relative "../../../app/mailers/signup_mailer"
# Preview all emails at http://localhost:3000/rails/mailers/signup_mailer/welcome_mail_preview

class SignupMailerPreview < ActionMailer::Preview
  def welcome_mail_preview
    SignupMailer.welcome_email(User.first)
  end
end
