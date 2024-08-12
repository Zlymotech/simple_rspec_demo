# spec/requests/api_spec.rb

require 'rails_helper'
require 'faraday'

RSpec.describe 'API request', type: :request do
  let(:conn) do
    # Replace this dummy url with actual url 
    Faraday.new(url: 'https://dummy.restapiexample.com/api/v1/employees') do |faraday|
      faraday.request :authorization, :basic, 'username', 'password' # Replace 'username' and 'password' with your actual API credentials
      faraday.adapter Faraday.default_adapter
    end
  end

  context 'when the status code is 200' do
    it 'passes the test' do
      response = conn.get('/employee')  # Replace '/employee' with the actual endpoint you want to test
      expect(response.status).to eq(200)
    end
  end
end
