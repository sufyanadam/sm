require "sm/version"
require 'sm/post_slack_message'
require 'sm/exceptions'

module Sm
  def self.psm(channel, msg, as_user, icon_emoji, api_url)
    begin
      PostSlackMessage.to channel, msg, as_user, icon_emoji, api_url
    rescue RestClient::Exception => e
      sm_error = Error.new e
      raise sm_error
    end
  end
end
