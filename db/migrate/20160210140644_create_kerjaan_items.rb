class CreateKerjaanItems < ActiveRecord::Migration
  def change
    create_table :kerjaan_items do |t|
      t.string :content
      t.references :daftar_kerjaan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
