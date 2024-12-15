class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :CompanyId
      t.string :Name
      t.boolean :Active
    end
  end
end
