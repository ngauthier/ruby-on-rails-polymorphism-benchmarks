class CreateStringAssocIndices < ActiveRecord::Migration
  def self.up
    create_table :string_assoc_indices do |t|
      t.integer :fk
      t.string :type

      t.timestamps
    end
    
    add_index :string_assoc_indices, :type
  end

  def self.down
    drop_table :string_assoc_indices
  end
end
