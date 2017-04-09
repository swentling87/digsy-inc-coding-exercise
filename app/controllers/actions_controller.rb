class ActionsController < ApplicationController
  def index
    @action = Action.all.sample
  end

  def new
    @action = Action.new
  end

  def create
    params.permit!
    @action = Action.create(action_params)

    if @action.save
      flash[:notice] = "Action was saved."
      redirect_to actions_path
    else
      flash.now[:alert] = "There was an error saving the action. Please try again."
      render :new
    end
  end

  private

  def action_params
    params.require(:new_action).permit(:title, :img, :description)
  end
end
