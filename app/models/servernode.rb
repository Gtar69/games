class Servernode < ActiveRecord::Base
  scope :available, -> { where(:status => "Available") }
  scope :random, -> {order("RANDOM()")}
end
