class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  # GET /educations
  # GET /educations.json
  def index
    @educations = Education.all
    authorize! :edit, @education
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
    authorize! :edit, @education
  end

  # GET /educations/new
  def new
    @education = Education.new
  end

  # GET /educations/1/edit
  def edit
    authorize! :edit, @education
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = Education.new(education_params)
    current_user.educations << @education
    respond_to do |format|
      if @education.save
        format.html { redirect_to current_user, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to current_user, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_params
      params.require(:education).permit(:organization, :qualification, :major, :other, :date_start, :date_finish)
    end
end
