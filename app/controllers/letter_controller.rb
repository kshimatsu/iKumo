class LetterController < ApplicationController
  def new
    @letter = Letter.new
    respond_with(@letter)
  end


end
