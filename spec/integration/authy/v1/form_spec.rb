##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Form' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.authy.v1.forms('form-app-push').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://authy.twilio.com/v1/Forms/form-app-push',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "type": "form-sms",
          "forms": {
              "create_factor": {},
              "verify_factor": {},
              "create_challenge": {}
          },
          "form_meta": {},
          "url": "https://authy.twilio.com/v1/Forms/form-sms"
      }
      ]
    ))

    actual = @client.authy.v1.forms('form-app-push').fetch()

    expect(actual).to_not eq(nil)
  end
end