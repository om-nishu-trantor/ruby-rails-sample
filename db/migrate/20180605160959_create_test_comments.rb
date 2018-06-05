class CreateTestComments < ActiveRecord::Migration
  def change
    create_table :test_comments do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
