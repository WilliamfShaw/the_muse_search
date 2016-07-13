class Job
  attr_reader :id, :short_name, :categories, :levels, :refs, :model_type, :type, :contents, :name,
    :company, :locations, :tags, "publication_date"

  def initialize(params: {})
    @id = params["id"]
    @short_name = params["short_name"]
    @categories = params["categories"]
    @levels = params["levels"]
    @refs = params["refs"]
    @model_type = params["model_type"]
    @type = params["external"]
    @name = params["name"]
    @company = params["company"]
    @contents = params["contents"]
    @locations = params["locations"]
    @tags = params["tags"]
    @publication_date = params["publication_date"]
  end
end
