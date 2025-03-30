class CreateParts < ActiveRecord::Migration[8.0]
  def change
    create_table :parts do |t|
      t.string :CompanyId, null: false
      t.string :PartNum, null: false
      t.string :PartDescription
      t.boolean :SerialTracked
      t.string :DefaultUom
    end

    add_index :parts, [ :CompanyId, :PartNum ], unique: true
  end
end
