class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @angels = User.where(role: "Angel")
  end

  def profile
  end
end
