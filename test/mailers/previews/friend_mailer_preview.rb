# Preview all emails at http://localhost:3000/rails/mailers/friend_mailer
class FriendMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/friend_mailer/friend_created
  def friend_created
    FriendMailer.with(user: User.first, friend: Friend.first).friend_created
  end

end
