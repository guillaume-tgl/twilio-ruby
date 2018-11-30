##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Challenge' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .entities('identity') \
                      .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .challenges.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://authy.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity/Factors/YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Challenges',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "entity_sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "factor_sid": "YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "date_responded": "2015-07-30T20:00:00Z",
          "expiration_date": "2015-07-30T20:00:00Z",
          "status": "pending",
          "responded_reason": "none",
          "details": "Hi! Mr. John Doe, would you like to sign up?",
          "hidden_details": "Hidden details about the sign up",
          "type": "sms",
          "url": "https://authy.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors/YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Challenges/YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges.create()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .entities('identity') \
                      .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .challenges('sid').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://authy.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity/Factors/YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Challenges/sid',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges('sid').delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .entities('identity') \
                      .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .challenges('sid').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://authy.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity/Factors/YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Challenges/sid',
    ))).to eq(true)
  end

  it "receives fetch_sid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "entity_sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "factor_sid": "YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "date_responded": "2015-07-30T20:00:00Z",
          "expiration_date": "2015-07-30T20:00:00Z",
          "status": "pending",
          "responded_reason": "none",
          "details": "details",
          "hidden_details": "hidden_details",
          "type": "sms",
          "url": "https://authy.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors/YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Challenges/YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges('sid').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_latest responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "entity_sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "factor_sid": "YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "date_responded": "2015-07-30T20:00:00Z",
          "expiration_date": "2015-07-30T20:00:00Z",
          "status": "pending",
          "responded_reason": "none",
          "details": "details",
          "hidden_details": "hidden_details",
          "type": "sms",
          "url": "https://authy.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors/YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Challenges/YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges('sid').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .entities('identity') \
                      .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .challenges('sid').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://authy.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity/Factors/YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Challenges/sid',
    ))).to eq(true)
  end

  it "receives verify_sid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "entity_sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "factor_sid": "YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "date_responded": "2015-07-30T20:00:00Z",
          "expiration_date": "2015-07-30T20:00:00Z",
          "status": "approved",
          "responded_reason": "none",
          "details": "Hi! Mr. John Doe, would you like to sign up?",
          "hidden_details": "Hidden details about the sign up",
          "type": "sms",
          "url": "https://authy.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors/YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Challenges/YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges('sid').update()

    expect(actual).to_not eq(nil)
  end

  it "receives verify_latest responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "entity_sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "factor_sid": "YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "date_responded": "2015-07-30T20:00:00Z",
          "expiration_date": "2015-07-30T20:00:00Z",
          "status": "approved",
          "responded_reason": "none",
          "details": "Hi! Mr. John Doe, would you like to sign up?",
          "hidden_details": "Hidden details about the sign up",
          "type": "sms",
          "url": "https://authy.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors/YFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Challenges/YCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.authy.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .entities('identity') \
                             .factors('YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .challenges('sid').update()

    expect(actual).to_not eq(nil)
  end
end