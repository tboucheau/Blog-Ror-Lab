class Category < ApplicationRecord

    include Sluggable
    validates :name, presence: true
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

end
