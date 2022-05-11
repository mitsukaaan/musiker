class Public::OrdersController < ApplicationController

    def selection_date
        @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 2).order(day: :desc)
    end

    def new
        @order = Order.new
        @reservations = Reservation.new
        @day = params[:day]
        @time = params[:time]
    end

    def confirm
        @day = params[:order][:day]
        @time = params[:order][:time]

        @order = Order.new(order_params)
         if params[:order][:style] =="vn_vn"||params[:order][:style] == "vn_vc"||params[:order][:style] =="vn_pf"||params[:order][:style] =="vc_pf"
             @price = 15000
             @train_price = 2000
         elsif params[:order][:style] == "vn_vn_pf"||params[:order][:style] =="vn_vc_pf"
            @price = 20000
            @train_price =3000
         elsif params[:order][:style] == "vn_vn_va_vc"
             @price = 25000
             @train_price = 4000
         end

         if params[:order][:piece] =="anything"
             @request_price = 0
         elsif params[:order][:piece] == "half_request"
             @request_price = 3000
         elsif params[:order][:piece] == "all_request"
             @request_price = 5000
         end
    end

    def attention
        @order = Order.new(order_params)
        @day = params[:order][:day]
        @time = params[:order][:time]
    end

     def create
         reservation = Reservation.new(day: Date.parse(params[:order][:day]), time: params[:order][:time])
         reservation.customer_id = current_customer.id
         reservation.start_time = DateTime.parse(params[:order][:day])
         reservation.save


         order = Order.new(order_params)
         order.customer_id = current_customer.id
         order.reservation_id = reservation.id
         order.save



         redirect_to orders_thanks_path
     end


    def thanks
    end

    private
    def order_params
        params.require(:order).permit(:customer_id,:last_name,:first_name,:date,:address,:station,:style,:request,:piece,:other,:purpose,:price,:train_price,:total_price,:reservation_id,:request_price)
    end
end
