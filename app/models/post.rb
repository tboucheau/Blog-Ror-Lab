class Post < ApplicationRecord

    validates :name, presence: true
    before_validation :default_slug
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }

    private
    def default_slug
        if !self.name.empty? && self.slug.empty?
            self.slug = name.parameterize
        end
    end

end
