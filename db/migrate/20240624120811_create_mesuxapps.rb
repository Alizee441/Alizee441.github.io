class CreateMesuxapps < ActiveRecord::Migration[7.1]
  def change
    create_table :mesuxapps do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
