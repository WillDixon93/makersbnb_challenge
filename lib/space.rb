require 'active_record'

class Space < ActiveRecord::Base
    has_many :bookings
    belongs_to :owner
end
