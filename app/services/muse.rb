class Muse
  BASE_URL = "https://api-v2.themuse.com/jobs?".freeze

  def initialize(keys: {})
    @keys = keys
  end

  def self.call(keys = {})
    new(keys: keys).call
  end

  def call
    fetch
    records
  end

  private

  attr_reader :records, :keys

  def fetch
    @records = Typhoeus.get(request_url)
  end

  def request_url
    BASE_URL + keys.merge(api_key: ENV["MUSE_API_KEY"]).to_query
  end
end
