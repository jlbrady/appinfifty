class HomeController < ShopifyApp::AuthenticatedController
  require 'HTTParty'
  def show
    @image_metafields = []

    # get the product by id
    @product = ShopifyAPI::Product.find(params[:id])

    # store the headers for our request
    headers = {"X-Shopify-Access-Token" => @shop_session.token}

    # loop through each image on the product
    @product.images.each do |image|
      id = image.id.to_s

      # make the request and store it in a variable
      metafields = HTTParty.get('https://pontiac-test.myshopify.com/admin/metafields.json?metafield[owner_id]='+ id +'&metafield[owner_resource]=product_image', :headers => headers).values

      # add the returned data to the @image_metafiels array
      @image_metafields.push(metafields)
    end
  end
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end
end
