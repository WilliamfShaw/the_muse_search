class MuseJobPresenter
  LEVEL = {
    entry: "Entry Level",
    internship: "Internship",
    mid: "Mid Level",
    senior: "Senior Level"
  }

  LOCATIONS = {
    new_york: "New York City Metro Area",
    sf: "San Francisco Bay Area",
    austin: "Austin, TX",
    chicago: "Chicago, IL",
    boston: "Boston Metro Area"
  }

  CATERGORIES = {
    sales: "Sales",
    engineering: "Engineering",
    data_science: "Data Science",
    education: "Education",
    operations: "Operations"
  }

  attr_reader :page, :limit

  def initialize(page:, limit:)
    @page = page.to_i
    @limit = limit
  end

  def next?
    page < limit - 1
  end

  def next_page
    next? ? page + 1 : page
  end

  def previous?
    page > 0
  end

  def previous_page
    previous? ? page - 1 : page
  end
end
