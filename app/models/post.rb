class Post < ApplicationRecord

    include Sluggable
    validates :name, presence: true
    before_validation :set_default_slug
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

end
