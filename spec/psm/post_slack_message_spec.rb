require 'spec_helper'
require_relative '../../lib/sm/post_slack_message'

RSpec.describe PostSlackMessage do
  describe ".to" do
    subject { described_class.to(channel, msg, as_user, icon_emoji, slack_webhook_url) }

    let(:slack_webhook_url) { 'https://hooks.slack.com/services/path/to/integration' }
    let(:channel)           { '#doughnuts'             }
    let(:msg)               { "I have some right here" }
    let(:as_user)           { 'slackbot'               }
    let(:icon_emoji)        { ':ghosts:'                }

    it "makes a POST request to the given url with the correct arguments" do
      stub_request(:post, slack_webhook_url).with(
        body: {
          payload: {
            username: as_user,
            channel: channel,
            text: msg,
            icon_emoji: icon_emoji,
          }.to_json
        }
      ).to_return({status: 200, body: 'msg posted!'})

      expect(subject).to eq "msg posted!"
    end
  end
end
