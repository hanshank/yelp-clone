class NotificationMailer < ApplicationMailer
  default from: "hansmhank@gmail.com"


  def comment_added
    mail(to: "hans@hanken.org",
        subject: "A comment has been added to your place")
  end
end
