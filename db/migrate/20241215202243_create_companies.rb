class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :CompanyId, null: false
      t.string :Name
      t.boolean :Active
    end

    add_index :companies, :CompanyId, unique: true
  end
end
