class SearchesController < ApplicationController
  before_action :authenticate_user!

  def result
    @searches  = eval(params[:bulletin]).where('created_at >= :years_ago', :years_ago => 
          Time.now - 1.years).where("title like ?", "%#{params[:search_text]}%")
  end
end
