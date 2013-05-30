class MainController < ApplicationController
  def index
  end

  def tur1
    @vopros = Voprosy.where("tur='1'")
  end

  def tur2
    @categor = Voprosy.where("tur='2'")
  end

  def tur2vop
    @vopros = Voprosy.where("categor='#{params[:format]}'")
  end

  def tur3
    @vopros1 = Voprosy.where("id_uchast=9")#красный
    @vopros2 = Voprosy.where("id_uchast=6")#синий
    @vopros3 = Voprosy.where("id_uchast=2")#желтый
  end
end
