class CreateIntAssocInds < ActiveRecord::Migration
  def self.up
    create_table :int_assoc_inds do |t|
      t.integer :fk
      t.integer :type

      t.timestamps
    end
    add_index :int_assoc_inds, :type
  end

  def self.down
    drop_table :int_assoc_inds
  end
end
