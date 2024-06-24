class CreateMesautresprojets < ActiveRecord::Migration[7.1]
  def change
    create_table :mesautresprojets do |t|

      t.timestamps
    end
  end
end
