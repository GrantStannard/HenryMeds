# frozen_string_literal: true

class ProviderController < ApplicationController
  def schedule
    Provider.schedule(id: params[:id], start_time: params[:start_time], end_time: params[:end_time])
  end

  def get_schedule
    Provider.get_schedule(id: params[:id])
  end
end
