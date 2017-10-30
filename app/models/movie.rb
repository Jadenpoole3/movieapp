class Movie < ApplicationRecord
    include HTTParty
    base_uri ''
end
