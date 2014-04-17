class OwnersController < ApplicationController

  def index
    @owners = Owner.all
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
  end

end
