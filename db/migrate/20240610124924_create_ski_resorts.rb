class CreateSkiResorts < ActiveRecord::Migration[6.1]
  def change
    create_table :ski_resorts do |t|

      t.timestamps
    end
  end
end
