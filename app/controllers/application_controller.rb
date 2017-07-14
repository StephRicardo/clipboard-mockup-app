class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  protected

  def fave_designs(starred_designs_array)
    starred_designs_array.map do |starred_design|
      starred_design.design
    end
  end
end
