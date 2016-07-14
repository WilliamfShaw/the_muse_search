class JobsController < ApplicationController
  def index
    @search_result = JSON.parse(Muse::Jobs.call(search_params))
    @jobs = @search_result["results"].map { |job| MuseJob.new(params: job) }.map(&JobsDecorator)
    @presenter = MuseJobPresenter.new(page: page, limit: @search_result.dig("page_count"))
  end

  private

  def search_params
    params.permit(:page, :category, :location, :level).merge(page: page)
  end

  def page
    params[:page] || 0
  end
end
