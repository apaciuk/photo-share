class CreatePictureShots < ActiveRecord::Migration[7.0]
  def change
    create_table :picture_shots, id: :uuid do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.string :user_pictureshot

      t.timestamps
    end
    add_reference :picture_shots, :user, foreign_key: true, type: :uuid
  end
end
