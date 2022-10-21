class AddReferencesToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :propert, null: false, foreign_key: true
  end
end
