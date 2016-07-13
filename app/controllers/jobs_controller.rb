class JobsController < ApplicationController
  def index
    @search_result = JSON.parse(Muse::Jobs.call(search_params))
    @jobs = @search_result["results"].map { |job| Job.new(params: job) }
  end

  private

  def search_params
    params.permit(:page).merge(page: page)
  end

  def page
    params[:page] || 1
  end
end
