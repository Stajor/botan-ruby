require 'faraday'
require 'json'

require 'botan/version'
require 'botan/configuration'
require 'botan/exceptions'

module Botan
  API_URL = 'https://api.botan.io'.freeze

  class << self
    attr_writer :configuration
  end

  def self.track(uid, message, name, token = nil)
    token = token || Botan.configuration.token

    begin
      response = Faraday.new(url: API_URL).post do |req|
        req.url "/track?token=#{token}&uid=#{uid}&name=#{name}"
        req.headers['Content-Type'] = 'application/json'
        req.body = JSON.dump({text: message})
      end

      puts response.body

      JSON.parse(response.body)
    rescue => e
      raise Botan::ResponseError.new(e.message)
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
