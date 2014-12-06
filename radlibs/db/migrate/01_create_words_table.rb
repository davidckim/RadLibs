class CreateWordsTable < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string   :name
      t.string   :adjective
      t.string   :verb
      t.string   :object
      t.integer  :template_id

      t.timestamps
    end
  end
end
