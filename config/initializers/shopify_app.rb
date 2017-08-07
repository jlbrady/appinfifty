ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b392bf79d0f84322938aa67c0476ffed"
  config.secret = "f25cd5a32c006286886ad2cfe1261281"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
