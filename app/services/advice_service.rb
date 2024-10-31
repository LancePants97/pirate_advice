class AdviceService
  def self.get_advice
    conn = Faraday.new("https://api.adviceslip.com")
    response = conn.get("/advice")
    JSON.parse(response.body, symbolize_names: true)
  end
end