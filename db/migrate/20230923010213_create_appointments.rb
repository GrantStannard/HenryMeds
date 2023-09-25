# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :provider_id
      t.datetime :start_time
      t.boolean :confirmation, default: false
      # t.datetime :end_time
      # TODO: techinically only need end time but this would allow for diffent length appointments
      t.timestamps
    end

    add_index :schedules, :client_id, name: 'index_clients_on_appointments'
    add_index :schedules, :provider_id, name: 'index_providers_on_appointments'
  end
end
