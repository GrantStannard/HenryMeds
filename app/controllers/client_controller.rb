# frozen_string_literal: true

class ClientController < ApplicationController
  def reserve
    Client.reserve(provider_id: params[:provider_id], client_id: params[:client_id], start_time: params[:start_time])
  end

  def confirm
    Client.confirm(id: params[:id])
  end
end
