Rails.application.routes.draw do
  get("/square/results", {:controller => "square", :action => "square"})

  get("/square/new", {:controller => "square", :action => "square_new"})

  get("/square_root/results", {:controller => "squareroot", :action => "squareroot"})

  get("/square_root/new", {:controller => "squareroot", :action => "squareroot_new"})

  get("/payment/results", {:controller => "payment", :action => "paymentnew"})

  get("/payment/new", {:controller => "payment", :action => "payment_results"})

  get("/random/results", {:controller => "random", :action => "randomnew"})

  get("/random/new", {:controller => "random", :action => "random_results"})
end
