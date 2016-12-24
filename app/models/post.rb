class Post < ApplicationRecord

    include Sluggable

    belongs_to :category

    default_scope {order(created_at: :desc)} #sera executé partout

    scope :published, -> (online) {where(online: 1)} do
        where(online: online) if online.is_a? Integer
    end

    scope :offline, -> {where(online: 0)}

    scope :alpha, -> { order(name: :asc)}

    validates :name, presence: true
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true


end
