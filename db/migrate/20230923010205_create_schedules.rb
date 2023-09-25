# frozen_string_literal: true

class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :provider_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end

    add_index :schedules, :provider_id, name: 'index_providers_on_scheudule'
  end
end
