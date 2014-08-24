require "clockwork"
require "pyro"

module Clockwork

  every(10.minutes, "[#{DateTime.now.to_s}] Liking hot girls ( ͡° ͜ʖ ͡°)") do
    client = get_authenticated_client
    1.upto(5) do
      results = client.get_nearby_users.parsed_response["results"]
      if results
        ids = results.map{ |match| match["_id"] }
        ids.each do |id| 
          client.like(id)
          puts "liked #{id} \n"
        end
      else
        puts "no new babes rn :S \n"
        break
      end
    end
  end

  every(10.hours, "Reauthenticating...") do
    reauthenticate_client
    puts "reauthenticated \n"
  end

  class << self

    def get_authenticated_client
      @client ||= authenticate!
    end

    def authenticate!
      client = TinderPyro::Client.new
      response = client.sign_in(ENV["FACEBOOK_ID"], ENV["FACEBOOK_TOKEN"])
      raise "tinder login error" if response["error"]
      client
    end

    def reauthenticate_client
      @client = nil
      get_authenticated_client
    end
  end
end
