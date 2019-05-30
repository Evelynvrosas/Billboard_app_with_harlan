class BillboardsController < ApplicationController
  
  before_action :set_billboard, only: [:show, :edit, :update, :destroy]

  def index
    @billboards = Billboard.all
  end

  def show
    # before_action
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render partial: 'form'
      puts "Error"
    end
  end

  def edit
    # before_action
    render partial: 'form'
  end

  def update
   if @billboard.update(billboard_params)
    redirect_to @billboard
   else
    render partial: 'form'
  puts "Error"
   end
  end

  def destroy
    # before_action
  @billboard.destroy
  redirect_to billboards_path
  end

  private

  def billboard_params
    params.require(:billboard).permit(:name)
  end

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

end
