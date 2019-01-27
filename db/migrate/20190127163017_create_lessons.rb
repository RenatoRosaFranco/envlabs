class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table   :lessons do |t|
      t.string     :title
      t.text       :description
      t.string     :slug
      t.string     :video_path
      t.text       :content
      t.string     :tags
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
