# frozen_string_literal: true

module Provider
  def self.schedule(id:, start_time:, end_time:)
    if Schedule.where(provider_id: id, start_time: start_time.all_day)
      # ideally this would be a custom error
      return 'Cannot current create two schedules on the same day'
    end

    Schedule.create(provider_id: id, start_time:, end_time:)
  end

  def self.get_schedule(id:)
    appointments = Appointment.where(provider_id: id).where('start_time > ?', 24.hours.from_now)
    schedules = Schedule.where(provider_id: id).where('start_time > ?', 24.hours.from_now)

    # This generates every 15 minute chunk that the provider is scheduled to work that isn't already taken by an appointment
    schedules.each_with_object([]) do |schedule, available_times|
      time = schedule.start_time
      while time < schedule.end_time
        available_times.push(time) unless appointments.where(provider_id: id, start_time: time)
                                                      .where('(created_at < ? or confirmed = TRUE)', 30.minutes.ago)
        time += 15.minutes
      end
    end
  end
end
