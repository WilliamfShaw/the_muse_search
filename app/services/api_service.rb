class ApiService
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
    fail NotImplementedError, "Inheriting class must implement '#fetch'"
  end
end
