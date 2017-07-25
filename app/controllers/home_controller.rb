class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end

  def shopinfo
    @shop = ShopifyAPI::Shop.current.find(:all, params: { limit: 10 })
  end

end
