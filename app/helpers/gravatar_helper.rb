module GravatarHelper

    def gravatar(email, options = {s: 200})
        throw TypeError unless email.respond_to?(:to_s)
        image_tag "https://fr.gravatar.com/userimage/#{Digest::MD5.hexdigest(email.to_s)}.jpg?size=#{options[:s]}"
    end
end
