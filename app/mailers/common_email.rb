class CommonEmail < ActionMailer::Base
  default from: 'info@village.com'
  RECIPIENTS = 'info@derevenka.net'

  def new_order_call(id)
    @order_call = OrderCall.find(id)
    mail to: RECIPIENTS, subject: 'Новый заказ звонка'
  end
end
