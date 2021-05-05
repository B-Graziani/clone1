class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end
  def show
    @flat = Flat.find(params[:id])
  end
  def top
    @flats = Flat.where('stars >= 5')
  end
  def email
    @flat = Flat.find(params[:id])
    @email = @flat.email
  end
  def edit
    @flat = Flat.find(params[:id])
  end
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to @flat
    else
      render :edit
    end
  end
  def new
    @flat = Flat.new
  end
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end
  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address, :description, :stars, :email)
  end
end
