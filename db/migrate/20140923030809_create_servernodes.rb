class CreateServernodes < ActiveRecord::Migration
  def change
    create_table :servernodes do |t|
      t.string :name
      t.string :status
      t.timestamps
    end
  end
end
