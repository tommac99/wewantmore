class PagesController < ApplicationController
  # before_action :authenticate_user!, only: [:index]

  def index
    @user = current_user
  end
end
