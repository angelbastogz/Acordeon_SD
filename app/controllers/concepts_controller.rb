class ConceptsController < ApplicationController
  before_action :set_concept, only: [:show, :edit, :update, :destroy]

  def index
    @concept = Concept.all
  end

  def show
  end

  def new
    @subject = Subject.find(params[:id])
    @concept = Concept.new
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_concept
    @concept = Concept.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def subject_params
    params.require(:concept).permit(:name, :definition)
  end
end
