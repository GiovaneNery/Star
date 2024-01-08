class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @angels = User.where(role: "Angel")
    @companies = Company.all
  end

  def profile
  end

  def question
  end
end
