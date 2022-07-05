class ItemController < ApplicationController
    def index
        @item = Item.all
    end

    def new
    end
end
