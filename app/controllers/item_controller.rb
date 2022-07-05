class ItemController < ApplicationController
    def index
        @item = Item.all
        @user = User.all
    end
end
