class CrewClassesController < ApplicationController
  before_action :set_crew_class, only: [:show, :edit, :update, :destroy]

  # GET /crew_classes
  # GET /crew_classes.json
  def index
    @crew_classes = CrewClass.all
  end

  # GET /crew_classes/1
  # GET /crew_classes/1.json
  def show
  end

  # GET /crew_classes/new
  def new
    @crew_class = CrewClass.new
  end

  # GET /crew_classes/1/edit
  def edit
  end

  # POST /crew_classes
  # POST /crew_classes.json
  def create
    @crew_class = CrewClass.new(crew_class_params)

    respond_to do |format|
      if @crew_class.save
        format.html { redirect_to @crew_class, notice: 'Crew class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crew_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @crew_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew_classes/1
  # PATCH/PUT /crew_classes/1.json
  def update
    respond_to do |format|
      if @crew_class.update(crew_class_params)
        format.html { redirect_to @crew_class, notice: 'Crew class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crew_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew_classes/1
  # DELETE /crew_classes/1.json
  def destroy
    @crew_class.destroy
    respond_to do |format|
      format.html { redirect_to crew_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_class
      @crew_class = CrewClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_class_params
      params.require(:crew_class).permit(:item_id, :class_desc)
    end
end
