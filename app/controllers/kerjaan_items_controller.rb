class KerjaanItemsController < ApplicationController
before_action :set_daftar_kerjaan
before_action :set_kerjaan_item, except: [:create]

  def create
    @kerjaan_item = @daftar_kerjaan.kerjaan_items.create(kerjaan_item_params)
    redirect_to @daftar_kerjaan
  end

  def destroy
		if @kerjaan_item.destroy
			flash[:success] = "Kerjaan item Dihapus."
		else
			flash[:error] = "Kerjaan item tidak dapat dihapus."
		end
		redirect_to @daftar_kerjaan
	end

private
  def set_daftar_kerjaan
    @daftar_kerjaan = DaftarKerjaan.find(params[:daftar_kerjaan_id])
  end

  def set_kerjaan_item
  		@kerjaan_item = @daftar_kerjaan.kerjaan_items.find(params[:id])
  end

  def kerjaan_item_params
    params.require(:kerjaan_item).permit(:content)
  end
end
