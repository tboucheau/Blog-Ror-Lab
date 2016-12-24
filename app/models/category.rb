class Category < ApplicationRecord

    include Sluggable
    validates :name, presence: true
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

    has_many :posts
    has_many :metas, as: :metaable
end
