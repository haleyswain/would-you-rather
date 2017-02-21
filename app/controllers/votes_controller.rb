class VotesController < ApplicationController

  def create
    p "="*40
      p vote_params
    p "="*40
    @choice = Choice.find(params[:choice_id])
    @vote = @choice.votes.new(vote_params)
    if @choice.save
      respond_to do |format|
        format.html { redirect_to choice_path(@choice), notice: "vote saved" }
        format.js
      end
    else
      flash[:alert] = "There was a problem"
      redirect_back
    end
  end

private

  def vote_params
    params.require(:vote).permit(:selection)
  end

end
