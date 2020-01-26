class AmcsController < ApplicationController
  before_action :set_amc, only: [:show, :edit, :update, :destroy]

  # GET /amcs
  # GET /amcs.json
  def index
    @amcs = Amc.all
  end

  # GET /amcs/1
  # GET /amcs/1.json
  def show
  end

  # GET /amcs/new
  def new
    @amc = Amc.new
  end

  # GET /amcs/1/edit
  def edit
  end

  # POST /amcs
  # POST /amcs.json
  def create
    @amc = Amc.new(amc_params)

    respond_to do |format|
      if @amc.save
        format.html { redirect_to @amc, notice: 'Amc was successfully created.' }
        format.json { render :show, status: :created, location: @amc }
      else
        format.html { render :new }
        format.json { render json: @amc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amcs/1
  # PATCH/PUT /amcs/1.json
  def update
    respond_to do |format|
      if @amc.update(amc_params)
        format.html { redirect_to @amc, notice: 'Amc was successfully updated.' }
        format.json { render :show, status: :ok, location: @amc }
      else
        format.html { render :edit }
        format.json { render json: @amc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amcs/1
  # DELETE /amcs/1.json
  def destroy
    @amc.destroy
    respond_to do |format|
      format.html { redirect_to amcs_url, notice: 'Amc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amc
      @amc = Amc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amc_params
      params.require(:amc).permit(:from_date, :to_date, :type, :price, :tax_type, :total)
    end
end
