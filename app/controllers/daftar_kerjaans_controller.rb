class DaftarKerjaansController < ApplicationController
  before_action :set_daftar_kerjaan, only: [:show, :edit, :update, :destroy]

  # GET /daftar_kerjaans
  # GET /daftar_kerjaans.json
  def index
    @daftar_kerjaans = DaftarKerjaan.all
  end

  # GET /daftar_kerjaans/1
  # GET /daftar_kerjaans/1.json
  def show
  end

  # GET /daftar_kerjaans/new
  def new
    @daftar_kerjaan = DaftarKerjaan.new
  end

  # GET /daftar_kerjaans/1/edit
  def edit
  end

  # POST /daftar_kerjaans
  # POST /daftar_kerjaans.json
  def create
    @daftar_kerjaan = DaftarKerjaan.new(daftar_kerjaan_params)

    respond_to do |format|
      if @daftar_kerjaan.save
        format.html { redirect_to @daftar_kerjaan, notice: 'Daftar kerjaan was successfully created.' }
        format.json { render :show, status: :created, location: @daftar_kerjaan }
      else
        format.html { render :new }
        format.json { render json: @daftar_kerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daftar_kerjaans/1
  # PATCH/PUT /daftar_kerjaans/1.json
  def update
    respond_to do |format|
      if @daftar_kerjaan.update(daftar_kerjaan_params)
        format.html { redirect_to @daftar_kerjaan, notice: 'Daftar kerjaan was successfully updated.' }
        format.json { render :show, status: :ok, location: @daftar_kerjaan }
      else
        format.html { render :edit }
        format.json { render json: @daftar_kerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daftar_kerjaans/1
  # DELETE /daftar_kerjaans/1.json
  def destroy
    @daftar_kerjaan.destroy
    respond_to do |format|
      format.html { redirect_to daftar_kerjaans_url, notice: 'Daftar kerjaan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daftar_kerjaan
      @daftar_kerjaan = DaftarKerjaan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daftar_kerjaan_params
      params.require(:daftar_kerjaan).permit(:title, :description)
    end
end
