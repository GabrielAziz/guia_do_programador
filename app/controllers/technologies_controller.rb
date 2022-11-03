class TechnologiesController < ApplicationController
  before_action :set_technology, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!,  only: %i[ index new edit create update destroy ]

  # GET /technologies or /technologies.json
  def index
    @technologies = Technology.all
  end

  # GET /technologies/1 or /technologies/1.json
  def show
  end

  # GET /technologies/new
  def new
    @technology = Technology.new
  end

  # GET /technologies/1/edit
  def edit
  end

  # POST /technologies or /technologies.json
  def create
    @technology = Technology.new(technology_params)

    respond_to do |format|
      if @technology.save
        format.html { redirect_to technology_url(@technology), notice: "Technology was successfully created." }
        format.json { render :show, status: :created, location: @technology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technologies/1 or /technologies/1.json
  def update
    respond_to do |format|
      if @technology.update(technology_params)
        format.html { redirect_to technology_url(@technology), notice: "Technology was successfully updated." }
        format.json { render :show, status: :ok, location: @technology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technologies/1 or /technologies/1.json
  def destroy
    @technology.destroy

    respond_to do |format|
      format.html { redirect_to technologies_url, notice: "Technology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology
      @technology = Technology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def technology_params
      params.require(:technology).permit(:name, :icon)
    end
end
