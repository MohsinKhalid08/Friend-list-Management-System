class FriendMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friend_mailer.friend_created.subject
  #
  def friend_created
    @user = params[:user]
    @friend = params[:friend]
    @greeting = "Hi"
    attachments['download.png'] = File.read('app/assets/images/download.png') 



    mail to: User.first.email, cc: User.all.pluck(:email), bcc: "mohsinkhalid@gmail.com", subject: "New Friend Created" 
  end
end
