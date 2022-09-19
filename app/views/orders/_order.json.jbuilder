json.extract! order, :id, :date_send, :params_for_send, :order_status, :ful_price, :notes, :created_at, :updated_at
json.url order_url(order, format: :json)
