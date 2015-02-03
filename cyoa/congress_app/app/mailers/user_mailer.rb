class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def bill_update_email()
    @user = user
    mail(:to => user.email, :subject => "New update on bill"
  end
end
