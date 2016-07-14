class MuseJob
  attr_reader :categories, :levels, :refs, :name, :company, :locations, :publication_date

  def initialize(params: {})
    @categories = params["categories"]
    @levels = params["levels"]
    @refs = params["refs"]
    @name = params["name"]
    @company = params["company"]
    @locations = params["locations"]
    @publication_date = params["publication_date"]
  end
end
