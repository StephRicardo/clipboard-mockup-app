class StarsController < ApplicationController

  def star
    @user = current_user
    @design = Design.find(params[:design_id])
    @user.star!(@design)

    respond_to do |format|
      format.js
    end
  end

  def unstar
    @user = current_user
    @star = @user.stars.find_by_design_id(params[:design_id])
    @design = Design.find(params[:design_id])
    @star.destroy!

    respond_to do |format|
      format.js
    end
  end
end
