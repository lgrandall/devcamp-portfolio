class Blog < ApplicationRecord

  scope :newest_first, -> {order(created_at: :desc)}

  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic

  belongs_to :topic

  has_many :comments, dependent: :destroy

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end