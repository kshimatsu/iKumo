class BabiesController < ApplicationController
  before_action :set_baby, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @babies = Baby.all
    @letters = Letter.all
    respond_with(@babies)
  end

  def show
    respond_with(@baby)
  end

  def new
    @baby = Baby.new
    respond_with(@baby)
  end

  def edit
  end

  def create
    @baby = Baby.new(baby_params)
    @baby.save
    redirect_to new_letter_path
  end

  def update
    @baby.update(baby_params)
    respond_with(@baby)
  end

  def destroy
    @baby.destroy
    respond_with(@baby)
  end

  private
    def set_baby
      @baby = Baby.find(params[:id])
    end

    def baby_params
      params.require(:baby).permit(:name, :birthday, :length, :weight, :gender, :profile_pic, :letter_ids => [])
    end
end
