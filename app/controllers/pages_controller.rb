class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = User.all
  end

  def profile
  end
end
