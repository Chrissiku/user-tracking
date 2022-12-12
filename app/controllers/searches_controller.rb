class SearchesController < ApplicationController
  include TrackEvent

  before_action :track_event

  def index

    if params[:query].present?
      @searches = Search.where("input LIKE ?", "%#{params[:query]}%")
 
        @search = Search.new(input: params[:query], visitor_id: session[:visitor_id])
        @search.save
    
    else
      @searches = Search.all
    end

    if turbo_frame_request?
      render partial: "searches", locals: { searches: @searches }
    else
      render "index"
    end
  end

  def create
    @search = Search.new(search_params)
    @search.save
    redirect_to root_path
  end

  private

  def search_params
    params.require(:search).permit(:input, :visitor_id).whith_defaults(visitor_id: session[:visitor_id])
  end
end
