class PirateAdviceFacade
  def self.get_pirate_advice(eng_advice)
    json = PirateAdviceService.get_pirate_advice(eng_advice)
    advice = json[:contents][:translated]
    advice
  end
end