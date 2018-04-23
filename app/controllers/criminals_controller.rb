class CriminalsController < ApplicationController
  before_action :set_criminal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit , :update, :destroy , :new , :create]
  # GET /criminals
  # GET /criminals.json
  def index
    @criminals = Criminal.all
  end

  # GET /criminals/1
  # GET /criminals/1.json
  def show
  end

  # GET /criminals/new
  def new
    @criminal = Criminal.new
  end

  # GET /criminals/1/edit
  def edit
  end

  # POST /criminals
  # POST /criminals.json
  def create
    @criminal = Criminal.new(criminal_params)

    respond_to do |format|
      if @criminal.save
        format.html { redirect_to @criminal, notice: 'Criminal was successfully created.' }
        format.json { render :show, status: :created, location: @criminal }
      else
        format.html { render :new }
        format.json { render json: @criminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criminals/1
  # PATCH/PUT /criminals/1.json
  def update
    respond_to do |format|
      if @criminal.update(criminal_params)
        format.html { redirect_to @criminal, notice: 'Criminal was successfully updated.' }
        format.json { render :show, status: :ok, location: @criminal }
      else
        format.html { render :edit }
        format.json { render json: @criminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criminals/1
  # DELETE /criminals/1.json
  def destroy
    @criminal.destroy
    respond_to do |format|
      format.html { redirect_to criminals_url, notice: 'Criminal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criminal
      @criminal = Criminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criminal_params
      params.require(:criminal).permit(:first_name, :second_name, :identification_mark, :location_of_crime, :address, :height, :weight, :description, :gender, :age, :avatar)
    end
end
