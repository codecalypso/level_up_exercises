class UserMailer < ActionMailer::Base
  default from: "no-reply@example.com"
   # user.email
  def bill_update_email
    # @user = user
    mail (:to => "smullins10@gmail.com", :subject => "New update on bill")
  end
end
