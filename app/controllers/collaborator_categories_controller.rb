class CollaboratorCategoriesController < ApplicationController
  before_action :set_collaborator_category, only: [:show, :edit, :update, :destroy]

  # GET /collaborator_categories
  # GET /collaborator_categories.json
  def index
    @collaborator_categories = CollaboratorCategory.all
  end

  # GET /collaborator_categories/1
  # GET /collaborator_categories/1.json
  def show
  end

  # GET /collaborator_categories/new
  def new
    @collaborator_category = CollaboratorCategory.new
  end

  # GET /collaborator_categories/1/edit
  def edit
  end

  # POST /collaborator_categories
  # POST /collaborator_categories.json
  def create
    @collaborator_category = CollaboratorCategory.new(collaborator_category_params)

    respond_to do |format|
      if @collaborator_category.save
        format.html { redirect_to @collaborator_category, notice: 'Categoria profissional registrada com sucesso.' }
        format.json { render :show, status: :created, location: @collaborator_category }
      else
        format.html { render :new }
        format.json { render json: @collaborator_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collaborator_categories/1
  # PATCH/PUT /collaborator_categories/1.json
  def update
    respond_to do |format|
      if @collaborator_category.update(collaborator_category_params)
        format.html { redirect_to @collaborator_category, notice: 'Categoria profissional atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @collaborator_category }
      else
        format.html { render :edit }
        format.json { render json: @collaborator_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collaborator_categories/1
  # DELETE /collaborator_categories/1.json
  def destroy
    @collaborator_category.destroy
    respond_to do |format|
      format.html { redirect_to collaborator_categories_url, notice: 'Categoria profissional removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaborator_category
      @collaborator_category = CollaboratorCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collaborator_category_params

      params.require(:collaborator_category).permit(:name)
    end
end
