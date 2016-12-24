class Post < ApplicationRecord

    validate :name, presence: true

end
