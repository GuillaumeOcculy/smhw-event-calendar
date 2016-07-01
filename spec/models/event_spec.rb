require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "attributes" do

    it 'requires starts_at to be valid' do
      event = Event.new(starts_at: nil, ends_at: Time.now, description: 'plop')
      expect(event).not_to be_valid
    end

    it 'requires ends_at to be valid' do
      event = Event.new(starts_at: Time.now, ends_at: nil, description: 'plop')
      expect(event).not_to be_valid
    end

    it 'requires description to be valid' do
      event = Event.new(starts_at: Time.now, ends_at: Time.now + 1, description: nil)
      expect(event).not_to be_valid
    end

    it 'requires all attributes to be valid' do
      event = Event.new(starts_at: Time.now, ends_at: Time.now + 1, description: 'plop')
      expect(event).to be_valid
    end

    it 'requires ends_at is greater than starts_at' do
      event = Event.new(starts_at: Time.now + 1.day, ends_at: Time.now, description: 'plop')
      expect(event).not_to eq(false)
    end

  end
end
