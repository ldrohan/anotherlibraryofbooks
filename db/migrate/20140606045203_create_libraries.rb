class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
