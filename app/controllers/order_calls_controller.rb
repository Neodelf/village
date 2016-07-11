class OrderCallsController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  layout nothing: true
  def create
    @order_call = OrderCall.new(order_call_params)
    if @order_call.save
      OrderCallWorker.perform_async(@order_call.id)
    end
    render 'order_calls/create', layout: false
  end

  private
  def order_call_params
    params.require(:order_call).permit(:name, :phone_number, :comment)
  end
end