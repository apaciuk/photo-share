# == Schema Information
#
# Table name: picture_shots
#
#  id               :uuid             not null, primary key
#  description      :text             default(""), not null
#  title            :string           default(""), not null
#  user_pictureshot :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :uuid
#
# Indexes
#
#  index_picture_shots_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :picture_shot do
    title { "MyString" }
    description { nil }
    user_references { "MyString" }
    user_pictureshot { "MyString" }
  end
end
