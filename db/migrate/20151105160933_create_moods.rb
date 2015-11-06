class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :emotion
      t.boolean :is_private
      t.references :user

      t.timestamps null: false
    end
  end
end
