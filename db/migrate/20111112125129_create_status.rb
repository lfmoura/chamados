class CreateStatus < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.string :name

      t.timestamps
    end
  end
end
