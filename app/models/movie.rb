class Movie < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :dependent => :destroy

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  has_many   :actors,
             :through => :castings,
             :source => :actor

  # Validations

end
