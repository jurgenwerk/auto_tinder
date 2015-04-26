task :update_location do
  require "pyro"
  raise "input location" unless ENV['LAT'] && ENV['LNG']

  client = TinderPyro::Client.new
  response = client.sign_in(ENV["FACEBOOK_ID"], ENV["FACEBOOK_TOKEN"])
  raise "tinder login error" if response["error"]
  p client.update_location(ENV['LAT'].to_f, ENV['LNG'].to_f)
end
