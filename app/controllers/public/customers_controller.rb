class Public::CustomersController < ApplicationController

    def edit
        @customer = Customer.find(params[:id])
    end

    def show
    end

    private

    def customer_params
        params.require(:customer).permit(:last_name,:first_name,:email,:telephone)
    end
end
