class CreateStringAssocs < ActiveRecord::Migration
  def self.up
    create_table :string_assocs do |t|
      t.integer :fk
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :string_assocs
  end
end
