class SpecialtiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_specialty, only: %i[ show edit update destroy ]

  # GET /specializations or /specializations.json
  def index
    specializations_query = SpecialtiesQuery.new
    @specialty = specializations_query.search(params[:query]).sort(params[:sort_field], params[:sort_direction]).result.paginate(page: params[:page], per_page: 10)
  end

  # GET /specializations/1 or /specializations/1.json
  def show
  end

  # GET /specializations/new
  def new
    @specialty = Specialty.new
  end

  # GET /specializations/1/edit
  def edit
  end

  # POST /specializations or /specializations.json
  def create
    @specialty = Specialty.new(specialty_params)

    respond_to do |format|
      if @specialty.save
        format.html { redirect_to specialty_url(@specialty), notice: "Specialty was successfully created." }
        format.json { render :show, status: :created, location: @specialty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specializations/1 or /specializations/1.json
  def update
    respond_to do |format|
      if @specialty.update(specialty_params)
        format.html { redirect_to specialty_url(@specialty), notice: "Specialty was successfully updated." }
        format.json { render :show, status: :ok, location: @specialty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specializations/1 or /specializations/1.json
  def destroy
    @specialty.destroy



    respond_to do |format|
      format.html { redirect_to specialty_url, notice: "Specialty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_specialty
    @specialty = Specialty.find_by(id: params[:id])
    #redirect_to specialties_path, notice: 'Specialty Deleted' unless @specialty
  end

  # Only allow a list of trusted parameters through.
  def specialty_params
    params.require(:specialty).permit(:name)
  end
end
