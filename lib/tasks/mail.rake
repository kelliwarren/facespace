desc "Sends a weekly email to users"
task weekly_email: :environment do
  User.all.each do |user|
    UserMailer.weekly_email(user).deliver
  end
end