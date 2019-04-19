class UserMailer < ApplicationMailer
  default from: 'admin@jungle.com'

  def order_confirmation(user,order)
    @order = order
    @user = user
    mail(to: @user.email, subject: "Order #{@order.id}")
  end
end