class MuseJob
  attr_reader :id, :short_name, :categories, :levels, :refs, :model_type, :type, :contents, :name,
    :company, :locations, :tags, "publication_date"

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
