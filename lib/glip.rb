require 'httparty'
require 'json'

require "glip/version"

module Glip
  class Room
    include HTTParty
	
    def initialize(options = {})
      default_options = {
		:api_url => 'https://hooks.glip.com',
		:room_id => ''
      }
      options = default_options.merge options
      url = options[:api_url] + '/webhook/' + options[:room_id]
      url = options[:full_url] if options[:full_url]
      self.class.base_uri url
    end

    def post(options = {})
      body = {
		:icon => 'http://www.redmine.org/attachments/download/3462/redmine_fluid_icon.png',
        :activity => 'Redmine',
		:title => 'Something happened on Redmine',
        :body => 'Check Redmine'
      }.merge options
      response = self.class.post('',
        :headers => { 'Content-Type' => 'application/json' },
        :body => body.to_json )
      case response.code
      when 200,204
        true
      else
        raise "#{response.message} (#{response.code})"
      end
    end
  end
end
