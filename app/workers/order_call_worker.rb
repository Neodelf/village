class OrderCallWorker
  include Sidekiq::Worker
  sidekiq_options queue: :village_prod, retry: true, backtrace: true

  def perform(id)
    CommonEmail.new_order_call(id).deliver
  end
end
