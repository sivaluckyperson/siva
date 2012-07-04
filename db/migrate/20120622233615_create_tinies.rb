class CreateTinies < ActiveRecord::Migration
  def change
    create_table :tinies do |t|
      t.string :url
      t.string :tiny

      t.timestamps
    end
  end
end
