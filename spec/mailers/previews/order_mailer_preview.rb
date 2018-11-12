# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_confirmation
  def order_confirmation
    OrderMailerMailer.order_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_in_progress
  def order_in_progress
    OrderMailerMailer.order_in_progress
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_shipped
  def order_shipped
    OrderMailerMailer.order_shipped
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_cancelled
  def order_cancelled
    OrderMailerMailer.order_cancelled
  end

end
