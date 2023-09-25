# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Client' do
  describe 'reserve' do
    context 'when the appointment is not 24 hours in advanced' do
      xit 'does not create the appointment' do
      end

      context 'when there is another appointment for that provider at that time' do
        xit 'does not create the appointment'
      end

      context 'when the client has another appointment at that time' do
        xit 'does not create the appointment'
      end

      context 'when the appointment is 24 hours in the future and no other appointment at that time' do
        xit 'creates the appointment' do
        end
      end
    end

    describe 'confirm' do
      context 'when more than 30 minutes have passed' do
        xit 'does not confirm the appointment'
      end

      context 'when less than 30 minutes have passes' do
        xit 'confirms the appointment'
      end
    end
  end
end
