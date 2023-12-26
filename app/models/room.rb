class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages

  # ・名前を空にしたままチャットルームを作成しようとするとエラーが出る
  validates :name, presence: true
end
