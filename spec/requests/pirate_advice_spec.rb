require "rails_helper"

RSpec.describe "Advice Service" do
  it "searches our API for advice" do
    text = "Sarcasm is the lowest form of wit. Employ correctly with apt timing."
    advice = PirateAdviceService.get_pirate_advice(text)

    expect(advice).to have_key(:contents)
    expect(advice[:contents]).to be_a(Hash)

    expect(advice[:contents]).to have_key(:translated)
    expect(advice[:contents][:translated]).to be_a(String)
  end
end