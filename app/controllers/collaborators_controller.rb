class CollaboratorsController < ApplicationController
  before_action :set_collaborator, only: [:show, :edit, :update, :destroy]

  # GET /collaborators
  # GET /collaborators.json
  def index
    @collaborators = Collaborator.all
  end

  # GET /collaborators/1
  # GET /collaborators/1.json
  def show
  end

  # GET /collaborators/new
  def new
    @collaborator = Collaborator.new
  end

  # GET /collaborators/1/edit
  def edit
  end

  # POST /collaborators
  # POST /collaborators.json
  def create

    @collaborator = Collaborator.new
    @collaborator.collaborator_category = CollaboratorCategory.find(collaborator_params[:collaborator_category_id])
    @collaborator.person = Person.find(collaborator_params[:person_id])
    respond_to do |format|
      if @collaborator.save
        format.html { redirect_to @collaborator, notice: 'Profissional registrado com sucesso.' }
        format.json { render :show, status: :created, location: @collaborator }
      else
        format.html { render :new }
        format.json { render json: @collaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collaborators/1
  # PATCH/PUT /collaborators/1.json
  def update
    respond_to do |format|
      if @collaborator.update(collaborator_params)
        format.html { redirect_to @collaborator, notice: 'Profissional atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @collaborator }
      else
        format.html { render :edit }
        format.json { render json: @collaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collaborators/1
  # DELETE /collaborators/1.json
  def destroy
    @collaborator.destroy
    respond_to do |format|
      format.html { redirect_to collaborators_url, notice: 'Profissional removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaborator
      @collaborator = Collaborator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collaborator_params
      params.require(:collaborator).permit(:id,:collaborator_category_id, :person_id, :person, :collaborator_category)
    end
end
