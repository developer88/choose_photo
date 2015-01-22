class CreateLeadersTable < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.integer :count, default: 0
      t.string  :path

      t.timestamps
    end
  end
end
