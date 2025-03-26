class CreatePartRevs < ActiveRecord::Migration[8.0]
  def change
    create_table :part_revs do |t|
      t.timestamps
      t.string :CompanyId
      t.string :PartNum
      t.string :RevisionNum
      t.string :RevisionNote, null: true
      t.date :EffectiveDate, null: false, default: -> { 'CURRENT_DATE' }
    end
  end
end
