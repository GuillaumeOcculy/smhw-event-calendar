class Event < ActiveRecord::Base

  # Validations
  validates_presence_of :starts_at
  validates_presence_of :ends_at
  validates_presence_of :description

  before_create :check_correct_date

  #Check if ends_at is grater than starts_at
  def check_correct_date
    false if starts_at > ends_at
  end
end
