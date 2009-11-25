class ExerciseGroupsController < ApplicationController
  
  def show
    @ex = ExerciseGroup.find(params[:id])
  end
  
end
