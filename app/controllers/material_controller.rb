class MaterialController < ApplicationController

  def notes
  end


  def questionpaper
  end	

  def semnotes
 @branch=params[:data]
 puts @branch

  end


end