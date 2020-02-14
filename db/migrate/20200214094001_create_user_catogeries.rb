class CreateUserCatogeries < ActiveRecord::Migration[6.0]
  def change
    create_table :user_categories do |t|
      t.references :user
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
