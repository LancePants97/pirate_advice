class PirateAdviceService
  def self.get_pirate_advice(quote)
    conn = Faraday.new("https://api.funtranslations.com")

    response = conn.get("/translate/pirate.json") do |req|
      req.params[:text] = quote
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end