class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title, limit: 20, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :all_day, default: false
      t.text :memo, limit: 500

      t.timestamps
    end
  end
end
