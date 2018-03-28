namespace :timeline do
  desc "投稿を全て非表示にする"
  task hide_lunch_post: :environment do
    LunchPost.is_active.update_all("is_active = false")
  end
end
