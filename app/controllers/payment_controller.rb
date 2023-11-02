class PaymentController < ApplicationController
  def paymentnew
    render({ :template => "game_templates/payment_new" })
  end
  def payment_results
    @APR = params.fetch("APR").to_fs(:percentage)
  
    @periods = params.fetch("user_years").to_i * 12
  
    @r = (((@APR*100)/12)/100)
  
    @Principal = params.fetch("user_pv").to_f
  
    @payment = (@r*@Principal)/(1-(1+@r)**(-1 * @periods))
  
    @payment.to_fs(:currency)
  end
  render({ :template => "game_templates/payment_results" })
end
  
