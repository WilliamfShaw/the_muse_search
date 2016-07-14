require "spec_helper"

describe JobsController, type: :controller do
  describe "GET index" do
    subject(:action) { get(:index) }

    it "returns 200" do
      expect(action).to have_http_status(:success)
    end

    it "calls Muse::Jobs" do
      expect(Muse::Jobs).to receive(:call).with(
        hash_including(page: 0)
      ).and_call_original
      action
    end

    it "assigns jobs" do
      action
      expect(assigns(:jobs)).to be_present
    end

    it "assigns a presenter" do
      action
      expect(assigns(:presenter)).to be_present
    end

    context "render view" do
      render_views

      it "properly renders" do
        action
        expect(response.body).to include("The Muse Job Search")
      end
    end
  end
end
