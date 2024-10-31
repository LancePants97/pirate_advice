require 'rails_helper'

RSpec.describe 'Road Trip Request', type: :request do
  before(:each) do
    base_url = "https://api.funtranslations.com"

    json_response = File.read('spec/fixtures/pirate_json.json')
    eng_advice = "Sarcasm is the lowest form of wit. Employ correctly with apt timing."

    stub_request(:get, "#{base_url}/translate/pirate.json?text=#{eng_advice}")
      .to_return(status: 200, body: json_response, headers: { 'Content-Type' => 'application/json' } )
    get "/advice"



    @advice = JSON.parse(response.body, symbolize_names: true)
  end

  it "gets pirate advice" do
    # binding.pry
  end
end