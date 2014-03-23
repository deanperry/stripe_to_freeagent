class LogsController < ApplicationController

	before_filter :authenticate_user!

  def index
  	@logs = current_user.logs.order("created_at DESC")
  end

  def show
  	@log = current_user.logs.find(params[:id])
  end

end