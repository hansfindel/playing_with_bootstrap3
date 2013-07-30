class TextManagersController < ApplicationController
  before_action :set_text_manager, only: [:show, :edit, :update, :destroy]

  # GET /text_managers
  # GET /text_managers.json
  def index
    @text_managers = TextManager.all
  end

  # GET /text_managers/1
  # GET /text_managers/1.json
  def show
  end

  # GET /text_managers/new
  def new
    @text_manager = TextManager.new
  end

  # GET /text_managers/1/edit
  def edit
  end

  # POST /text_managers
  # POST /text_managers.json
  def create
    @text_manager = TextManager.new(text_manager_params)

    respond_to do |format|
      if @text_manager.save
        format.html { redirect_to text_managers_path, notice: 'Text manager was successfully created.' }
        format.json { render action: 'index', status: :created, location: @text_manager }
      else
        format.html { render action: 'new' }
        format.json { render json: @text_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_managers/1
  # PATCH/PUT /text_managers/1.json
  def update
    respond_to do |format|
      if @text_manager.update(text_manager_params)
        format.html { redirect_to text_managers_path, notice: 'Text manager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @text_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_managers/1
  # DELETE /text_managers/1.json
  def destroy
    @text_manager.destroy
    respond_to do |format|
      format.html { redirect_to text_managers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_manager
      @text_manager = TextManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_manager_params
      params.require(:text_manager).permit(:name, :description)
    end
end
