class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.string :tech_stack
      t.text :description
      t.date :start
      t.date :end
      t.belongs_to :experience, index: true, foreign_key: true

      t.timestamps
    end
  end
end
