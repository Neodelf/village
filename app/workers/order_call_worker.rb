class OrderCallWorker
  include Sidekiq::Worker

  def perform(id)
    CommonEmail.new_order_call(id).deliver
  end
end
