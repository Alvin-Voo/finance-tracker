class StocksController < ApplicationController

  def search
    if params[:stock].blank?
      flash.now[:danger]='Search term cannot be empty!'
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger]='You\'ve entered an invalid symbol!' unless @stock
    end
    respond_to do |format|
      format.js { render partial: 'users/results' }
    end
  end
end