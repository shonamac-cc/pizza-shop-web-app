require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry' )

require_relative('./models/pizza_order')
also_reload('./models/*')

# INDEX - see all
get '/pizza_orders' do
  @orders = PizzaOrder.all()
  erb(:index)
end

# NEW - gather the info we need
get '/pizza_orders/new' do
  erb(:new)
end

# CREATE - create with the info we have
post '/pizza_orders' do
  @order = PizzaOrder.new(params)
  @order.save
  erb(:create)
end



# EDIT - what do we want to edit




# UPDATE - update with the edit info




# DELETE

# SHOW - see individual
get '/pizza_orders/:id' do
  @order = PizzaOrder.find(params[:id])
  erb(:show)
end
