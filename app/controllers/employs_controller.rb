class EmploysController < ApplicationController
  before_action :set_employ, only: [:show, :edit, :update, :destroy]

  # GET /employs
  # GET /employs.json
  def index
    @employs = Employ.all
    authorize! :edit, @employ
  end

  # GET /employs/1
  # GET /employs/1.json
  def show
    authorize! :edit, @employ
  end

  # GET /employs/new
  def new
    @employ = Employ.new
  end

  # GET /employs/1/edit
  def edit
    authorize! :edit, @employ
  end

  # POST /employs
  # POST /employs.json
  def create
    @employ = Employ.new(employ_params)
    current_user.employs << @employ
    respond_to do |format|
      if @employ.save
        format.html { redirect_to current_user, notice: 'Employ was successfully created.' }
        format.json { render :show, status: :created, location: @employ }
      else
        format.html { render :new }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employs/1
  # PATCH/PUT /employs/1.json
  def update
    respond_to do |format|
      if @employ.update(employ_params)
        format.html { redirect_to current_user, notice: 'Employ was successfully updated.' }
        format.json { render :show, status: :ok, location: @employ }
      else
        format.html { render :edit }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employs/1
  # DELETE /employs/1.json
  def destroy
    @employ.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Employ was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employ
      @employ = Employ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employ_params
      params.require(:employ).permit(:organization, :position, :responsibility, :date_start, :date_finish)
    end
end
