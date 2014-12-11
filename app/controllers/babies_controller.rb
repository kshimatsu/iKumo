class BabiesController < ApplicationController
  before_action :set_baby, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def family
    @babies = current_user.babies if current_user
  end

  def show
    @letters = @baby.letters
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
    @baby.user_id = current_user.id if current_user
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
      @baby = current_user.babies.find(params[:id]) if current_user
    end

    def baby_params
      params.require(:baby).permit(:name, :birthday, :length, :weight, :gender, :avatar, :letter_id, :user_id)
    end
end
