class JobsDecorator < ApplicationDecorator
  def company_name
    company.dig("name")
  end

  def location_name
    locations&.dig(0)&.dig("name")
  end

  def muse_url
    refs.dig("landing_page")
  end

  def all_categories
    categories.map { |c| c.dig("name") }
  end

  def date_published
    Date.strptime(publication_date).strftime("Posted: %m/%d/%Y")
  end
end
