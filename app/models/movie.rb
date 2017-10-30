class Movie < ApplicationRecord
    include HTTParty
    has_many: favo

end 