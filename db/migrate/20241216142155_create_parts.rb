class CreateParts < ActiveRecord::Migration[8.0]
  def change
    create_table :parts do |t|
      t.string :CompanyId
      t.string :PartNum
      t.string :PartDescription
      t.boolean :SerialTracked
      t.string :DefaultUom
    end
  end
end
