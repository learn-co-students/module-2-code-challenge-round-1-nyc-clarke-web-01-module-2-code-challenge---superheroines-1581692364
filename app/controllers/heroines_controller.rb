class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = @heroine.powers
  end

  def new
    @heroine = Heroine.new
    @joiner = Joiner.new
  end

  def create
    @heroine = Heroine.create(heroine_params)

    if @heroine.valid?
    @joiner = Joiner.create(power_id: joiner_params[:power_id], heroine_id: @heroine.id)
    
    redirect_to heroine_path(@heroine)

    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end

  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

  def joiner_params
    params.require(:joiner).permit(:power_id)
  end
  
end
