namespace :active_record_counter do
  desc "Display Friends Count"
  task friends_count: :environment do
    puts "Friends Count = #{Friend.count}"
  end

  desc "Display User Count"
  task users_count: :environment do
    puts "Users Count = #{User.count}"
  end
  # Updating Specific Field Value 
  desc "Update Twitter name"
  task users_update: :environment do
    puts "Update User = #{Friend.update_all(twitter: "@TWITTER")}"
  end
end
