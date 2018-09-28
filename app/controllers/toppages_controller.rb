class ToppagesController < ApplicationController
  def index
    def index
    @items = Item.order('updated_at DESC')
    end
  end
end
