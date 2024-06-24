class MesuxappsController < ApplicationController
  def index
    @mesuxapps = Mesuxapp.all
  end
end
