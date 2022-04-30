class Public::OrdersController < ApplicationController

    def attention
    end

    def new
        @customer = current_customer

    end
end
