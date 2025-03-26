class AddPhantombomToPart < ActiveRecord::Migration[8.0]
  def change
    add_column :parts, :PhantomBOM, :boolean
  end
end
