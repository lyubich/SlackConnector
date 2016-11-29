require 'slack-ruby-client'
require 'httparty'

require './slack_configuration'

HEADERS = {
    'Content-Type' => 'application/json',
    'Accept' => 'application/json'
}

client = Slack::RealTime::Client.new

def post(options = {}, event_type)
  url = "#{ENV['API_URL']}/#{event_type}"
  HTTParty.post(
      url,
      body: options.to_json,
      headers: HEADERS)
end

client.on :message do |data|
  post(data, 'message')
end


client.on :group_joined do |data|
  post(data, 'group-joined')
end

client.on :user_change do |data|
  post(data, 'user-change')
end

client.start!