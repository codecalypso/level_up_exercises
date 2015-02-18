namespace :email do
  desc "send email when bill updates"
  task update: :environment do
    UserMailer.bill_update_email.deliver
  end
end