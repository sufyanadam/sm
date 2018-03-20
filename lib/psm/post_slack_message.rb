require 'rest-client'

class PostSlackMessage
  def self.to(channel, msg, as_user, icon_emoji, api_url)
    RestClient.post(
      api_url,
      payload: {
        username: as_user,
        channel: channel,
        text: msg,
        icon_emoji: icon_emoji
      }.to_json
    )
  end
end
