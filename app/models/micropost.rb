class Micropost < ActiveRecord::Base
  belongs_to :user_id

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
   default_scope -> { order(created_at: :desc) }
end
