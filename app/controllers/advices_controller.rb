class AdvicesController < ApplicationController
  def show 
    eng_advice = AdviceFacade.get_eng_advice
    @pirate_advice = PirateAdviceFacade.get_pirate_advice(eng_advice)
    @refresh = "ARR, hit th' refresh button for more advice from yer Captain"
  end
end