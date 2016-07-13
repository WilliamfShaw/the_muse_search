class Muse::Jobs < ApiService
  BASE_URL = "https://api-v2.themuse.com/jobs?".freeze

  private

  def fetch
    @records = Rails.cache.fetch(request_url, expires_in: 3.minutes) do
      request
    end
  end

  def request
    HTTParty.get(request_url).body
  end

  def request_url
    BASE_URL + keys.merge(api_key: ENV["MUSE_API_KEY"]).to_query
  end
end
