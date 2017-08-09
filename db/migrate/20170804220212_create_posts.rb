class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :context
      t.boolean :status
      t.string :url

      t.timestamps
    end
  end
end
