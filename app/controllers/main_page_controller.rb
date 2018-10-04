class MainPageController < ApplicationController
  def index
	@schools = School.order(:Name)
  end
end
