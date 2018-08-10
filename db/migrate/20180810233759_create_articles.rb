class CreateArticles < ActiveRecord::Migration[5.2]
  def change #name of method
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
