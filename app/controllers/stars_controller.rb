class StarsController < ApplicationController
  respond_to :js

  def star
    @user = current_user
    @design = Design.find(params[:design_id])
    @user.star!(@design)
  end

  def unstar
    @user = current_user
    @star = @user.stars.find_by_design_id(params[:design_id])
    @design = Design.find(params[:design_id])
    @star.destroy!
  end
end
