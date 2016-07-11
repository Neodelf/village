class CommonEmail < ActionMailer::Base
  default from: 'info@village.com'
  RECEPIENTS = 'neodelfspam@gmail.com'

  def new_order_call(id)
    @order_call = OrderCall.find(id)
    mail to: RECEPIENTS, subject: 'Новый заказ звонка'
  end
end
