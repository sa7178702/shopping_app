class DashboardController < ApplicationController
  def index
    @gender=Gender.all
  end
end
