class EnqueueController < ApplicationController
  def enqueue
    render json: { "ok" }
  end
end
