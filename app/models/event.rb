class Event < ApplicationRecord
  serialize :params, Hash
  belongs_to :visitor
end
