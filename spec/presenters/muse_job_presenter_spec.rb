require "spec_helper"

describe MuseJobPresenter do
  subject(:presenter) { described_class.new(params) }

  describe "#next?" do
    subject(:next?) { presenter.next? }

    context "when page is less than limit -1" do
      let(:params) { { page: 1, limit: 100 } }

      it { is_expected.to eq(true) }
    end

    context "when page is greater than limit -1" do
      let(:params) { { page: 99, limit: 100 } }

      it { is_expected.to eq(false) }
    end
  end

  describe "#next_page" do
    subject(:next_page) { presenter.next_page }

    context "when page is less than limit -1" do
      let(:params) { { page: 1, limit: 100 } }

      it { is_expected.to eq(2) }
    end

    context "when page is greater than limit -1" do
      let(:params) { { page: 99, limit: 100 } }

      it { is_expected.to eq(99) }
    end
  end

  describe "#previous?" do
    subject(:previous?) { presenter.previous? }

    context "when page is greater than 0" do
      let(:params) { { page: 1, limit: 100 } }

      it { is_expected.to eq(true) }
    end

    context "when page is 0" do
      let(:params) { { page: 0, limit: 100 } }

      it { is_expected.to eq(false) }
    end
  end

  describe "#previous_page" do
    subject(:previous_page) { presenter.previous_page }

    context "when page is greater than 0" do
      let(:params) { { page: 1, limit: 100 } }

      it { is_expected.to eq(0) }
    end

    context "when page is 0" do
      let(:params) { { page: 0, limit: 100 } }

      it { is_expected.to eq(0) }
    end
  end
end
