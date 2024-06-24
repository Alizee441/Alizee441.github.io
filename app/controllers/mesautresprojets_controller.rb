class MesautresprojetsController < ApplicationController
  def index
    @mesautresprojets = Mesautresprojet.all
  end
end
