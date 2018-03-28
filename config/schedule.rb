set :output, "log/cron_log.log"
ENV['RAILS_ENV'] ||= 'development'
set :environment, ENV['RAILS_ENV']

every 1.day, at: '18pm' do
  rake "timeline:hide_lunch_post"
end
