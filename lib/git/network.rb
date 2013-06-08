require 'net/http'
require 'json'
require 'rash'
require 'git/network/version'

module Git
  module Network
    BASE_DIR = "https://github.com"

    def self.list(user, project, token)
      url = "#{BASE_DIR}/#{user}/#{project}/network_meta?access_token=#{token}"
      response = Hashie::Mash.new(JSON.parse(Net::HTTP.get(URI(url))))

      forks = response.users[0].heads.map(&:name) - ['master']
      [user] + forks
    end
  end
end
