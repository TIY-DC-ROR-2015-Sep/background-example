class DemoController < ApplicationController
  def form
  end

  def say
    SayJob.perform_later params[:phrase], params[:sleep].to_i
    # SayJob.new.perform params[:phrase], params[:sleep].to_i
    redirect_to :back
  end
end
