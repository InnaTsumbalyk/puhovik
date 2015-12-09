class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories, :current_cart

  private

  def set_categories
    @categories = Category.all.order(:position)
  end

  def current_cart
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end


# create products with columns: title, description:text,
# price:decimal (:precision => 8, :scale => 2),
#                                   image, rating
# gem 'russian'
  # def to_param
  #   "#{id}-#{title.parameterize}"
  # end

# create carts, actions show, destroy

      # <% if session[:cart_id] %>
      #     В корзине товара на сумму <%= number_to_currency(Cart.find(session[:cart_id]).total_price, :precision => 0, :unit => "грн.", :separator => ",", :delimiter => "", :format => "%n %u") %>
      #     <%= link_to "Перейти »", carts_path%>
      # <% else %>
      # Корзина пуста
      # <% end %>

# create LineItems,
# product_id, cart_id, quantity:integer (default: 1), order_id, title, price


# create orders
#          name, email, phone, address, status, order_details

  # def add_line_items_from_cart(cart)
  #   cart.line_items.each do |item|
  #     item.cart_id = nil
  #     line_items << item
  #   end
  # end