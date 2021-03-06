class Api::V1::TopSellingItemsController < ApplicationController
  before_action :authenticate_api
  skip_before_action :authorize!

  def index
    render json: Item.top_selling_items.first(5)
  end

end
