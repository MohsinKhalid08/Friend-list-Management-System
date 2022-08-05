class UserMailer < ApplicationMailer

     def welcome_email
        @user = params[:user]
        mail to: User.first.email, cc: User.all.pluck(:email), bcc: "mohsinkhalid@gmail.com", subject: "Welcome to this website"
       # mail(to: user.email, subject: "Welcome to this website")
    end
end

