class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :subtype

      t.timestamps
    end
  end
end
