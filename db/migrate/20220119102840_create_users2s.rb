class CreateUsers2s < ActiveRecord::Migration[6.1]
  def change
    create_table :users2s do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
