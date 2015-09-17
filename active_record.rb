module ActiveRecord
    class Base
        def self.has_many(name, options)
            puts [name, options]
        end
    end
end

class User < ActiveRecord::Base
    has_many :roles, dependent: :destroy
end
