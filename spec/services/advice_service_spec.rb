require "rails_helper"

RSpec.describe "Advice Service" do
  it "searches our API for advice" do
    advice = AdviceService.get_advice

    expect(advice).to have_key(:slip)
    expect(advice[:slip]).to be_a(Hash)

    expect(advice[:slip]).to have_key(:id)
    expect(advice[:slip][:id]).to be_an(Integer)

    expect(advice[:slip]).to have_key(:advice)
    expect(advice[:slip][:advice]).to be_a(String)
  end
end