class PagesController < ApplicationController
  def home
    @home = Home.all
  end

  def about
    @abouts = About.all
  end
end
