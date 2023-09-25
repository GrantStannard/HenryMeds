# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Provider' do
  describe 'get_schedule' do
    context 'when the provider has no schedule' do
      xit 'should return no available time' do
      end

      context 'when the provider is fully booked' do
        xit 'should return no available times'
      end

      context 'when the provider has no schedule for 24 hours in the future' do
        xit 'should return no available times'
      end

      context 'when the provider has old unconfirmed appointment' do
        xit 'should not still hold those times'
      end

      context 'when the provider has new unconfirmed appointments' do
        xit 'should hold those times'
      end

      context 'when the provider has confirmed appointments' do
        xit 'should hold those times'
      end

      context 'when the provider has time schduled 24 hours in the future and xit is not fully booked' do
        xit 'returns the available time slots'
      end
    end

    describe 'schedule' do
      context 'when creating another schedule for the same day' do
        xit 'returns an error'
      end

      context 'when create a schedule for a new day' do
        xit 'creates the schedule'
      end
    end
  end
end
