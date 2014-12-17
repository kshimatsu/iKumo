class LettersController < ApplicationController
  before_action :set_letter, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @letters = Letter.all
    @babies = Baby.all
    respond_with(@letters)
  end

  def show
    respond_with(@letter)
  end

  def new
    @letter = Letter.new
    respond_with(@letter)
  end

  def edit
  end

  def create
    @letter = Letter.new(letter_params)
    @letter.save
    redirect_to timeline_baby_path(@letter.baby_id)
  end

  def update
    @letter.update(letter_params)
    respond_with(@letter)
  end

  def destroy
    @letter.destroy
    respond_with(@letter)
  end

  private
    def set_letter
      @letter = Letter.find(params[:id])
    end

    def letter_params
      params.require(:letter).permit(:title, :content, :date, :baby_id)
    end
end
