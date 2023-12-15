class ApplicationService
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev/") do |faraday|
    end
  end
end