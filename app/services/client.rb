# frozen_string_literal: true

module Client
  def self.reserve(provider_id:, client_id:, start_time:)
    # Ideally these would return custom errors
    return 'Please create appoints 24 hours in advance' unless start_time > 24.hour.from_now
    return 'That time is not available please choose another time' if Appointment.where(provider_id:, start_time:)
    return 'You already have an appointment at that time' if Appointment.where(client_id:, start_time:)
    return 'The provider is not available at that time' if Schedule
                                                           .where(provider_id:)
                                                           .where('start_time < ?', start_time)
                                                           .where('end_time > ?', start_time)

    Appointment.create(provider_id:, client_id:, start_time:)
  end

  def self.confirm(id:)
    appointment = Appointment.where(id:)
    # Ideally this would be a custom error
    return 'Your appointment has expired' if 30.minutes.ago > appointment.created_at

    appointment.update(confirmed: true)
  end
end
