class Public::CustomersController < ApplicationController

    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        customer = Customer.find(params[:id])
        customer.update(customer_params)
        redirect_to orders_path
    end

    private

    def customer_params
        params.require(:customer).permit(:last_name,:first_name,:email,:telephone)
    end
end
