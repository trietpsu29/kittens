class KittensController < ApplicationController
  before_action :set_kitten, only: [ :edit, :update, :destroy, :show ]
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to kitten_path(@kitten), notice: "Kitten created successfully! 🎉🐱"
    else
      flash.now[:alert] = "Oops! Your kitten form has some mistakes. 😿"
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @kitten.update(kitten_params)
      redirect_to kitten_path(@kitten), notice: "Kitten updated successfully! 🐱"
    else
      flash.now[:alert] = "Oops! Your kitten form has some mistakes. 😿"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten.destroy

    redirect_to kittens_path,  notice: "Kitten deleted successfully. 😿"
  end

private
  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.expect(kitten: [ :name, :age, :cuteness, :softness ])
  end
end
