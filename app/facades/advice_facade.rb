class AdviceFacade
  def self.get_eng_advice
    json = AdviceService.get_advice
    json[:slip][:advice]
  end
end