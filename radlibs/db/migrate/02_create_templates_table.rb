class CreateTemplatesTable < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string   :sentence

      t.timestamps
    end
  end
end
