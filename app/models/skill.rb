class Skill
  include Mongoid::Document
  include Mongoid::Timestamps
  validates :title, presence: true
  validates :image, presence: true
  validates :summary, presence: true, length: { minimum: 10 }
end
