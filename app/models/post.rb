class Post < ApplicationRecord

    validates :name, presence: true
    before_validation :default_slug


    private
    def default_slug
        if !self.name.emtpy? && self.slug.empty?
            self.slug = name.parameterize
        end
    end

end
