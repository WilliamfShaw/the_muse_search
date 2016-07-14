require "spec_helper"

describe JobsDecorator do
  subject(:decorated_job) { described_class.decorate(job) }

  let(:job) { MuseJob.new(params: result) }
  let(:result) do
    {
      "categories" => [ { "name" => "Sales" } ],
      "company" => { "name" => "Quantcast" },
      "locations" => [ { "name" => "Austin, TX" } ],
      "levels" => [ { "name" => "Mid Level" } ],
      "name" => "Corporate Sales Manager, Core Services - Austin",
      "refs" => {
        "landing_page" => "https://www.themuse.com/jobs/quantcast/corporate-sales-manager-core-services-austin-fd1aa0"
      },
      "publication_date"=>"2016-06-03T13:52:45.210373Z"
    }
  end

  describe "#company_name" do
    it "returns the company name" do
      expect(decorated_job.company_name).to eq("Quantcast")
    end
  end

  describe "#location_name" do
    it "returns the location name" do
      expect(decorated_job.location_name).to eq("Austin, TX")
    end
  end

  describe "#muse_url" do
    it "returns the muse url" do
      expect(decorated_job.muse_url).to eq(
        "https://www.themuse.com/jobs/quantcast/corporate-sales-manager-core-services-austin-fd1aa0"
      )
    end
  end

  describe "#location_name" do
    it "returns the location name" do
      expect(decorated_job.location_name).to eq("Austin, TX")
    end
  end

  describe "#all_categories" do
    it "returns an array of caterogies" do
      expect(decorated_job.all_categories).to include("Sales")
    end
  end

  describe "#date_published" do
    it "returns a formmated date" do
      expect(decorated_job.date_published).to eq("Posted: 06/03/2016")
    end
  end
end
