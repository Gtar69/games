class DropProductsTable < ActiveRecord::Migration
  def change
    def up
      drop_table :photos
    end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  end
end
