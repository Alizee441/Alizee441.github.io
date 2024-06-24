class MesappsController < ApplicationController
  def index
    @mesapps = Mesapp.all
  end
end
