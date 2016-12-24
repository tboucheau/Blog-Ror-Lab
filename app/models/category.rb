class Category < ApplicationRecord
    include Sluggable
    before_validation :set_default_slug

end
