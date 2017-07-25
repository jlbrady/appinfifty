class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    shop = Shop.find_by(shopify_domain: params[:shop])
    shop = ShopifyApp::SessionRepository.retrieve(shop.id)
    puts(shop.shopify_token)
  end
end
