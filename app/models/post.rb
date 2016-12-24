class Post < ApplicationRecord

    include Sluggable

    belongs_to :category, counter_cache: true
    has_and_belongs_to_many :tags
    has_many :metas, as: :metaable

    default_scope {order(created_at: :desc)} #sera executé partout

    scope :online, -> (online) do
        where(online: online) if online.is_a? Integer
    end

    scope :offline, -> {where(online: 0)}

    scope :alpha, -> { order(name: :asc)}

    validates :name, presence: true
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true


end
