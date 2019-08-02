class CreateGraphTraversalKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :graph_traversal_klasses do |t|
      t.text :name
      t.text :json_data

      t.timestamps
    end
    add_index :graph_traversal_klasses, :name, unique: true
  end
end
