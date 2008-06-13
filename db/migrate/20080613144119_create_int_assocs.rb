class CreateIntAssocs < ActiveRecord::Migration
  def self.up
    create_table :int_assocs do |t|
      t.integer :fk
      t.integer :type

      t.timestamps
    end
  end

  def self.down
    drop_table :int_assocs
  end
end
