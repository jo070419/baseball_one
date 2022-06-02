class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.string       :title
      t.integer    :category_id
      t.integer    :prefecture_id
      t.string     :municipality
      t.string     :locate
      t.string     :ground
      t.date       :date
      t.integer    :start_time_id
      t.integer    :end_time_id
      t.date       :dead_line
      t.text       :recruit_text
      t.references :user,             null: false, foreign_key: true

      t.timestamps
    end
  end
end
