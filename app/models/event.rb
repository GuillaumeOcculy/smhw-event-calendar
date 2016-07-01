class Event < ActiveRecord::Base

  # Validations
  validates_presence_of :starts_at
  validates_presence_of :ends_at
  validates_presence_of :description
  
end
