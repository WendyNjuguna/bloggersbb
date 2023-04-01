class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :blog_title
      t.string :blog_desc
      t.string :blog_content
      t.string :blog_type

      t.references :users, null: false, foreign_key: true
      t.timestamps
    end
  end
end
