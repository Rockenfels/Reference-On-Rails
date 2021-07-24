module ApplicationHelper
    def current_rider
        session[:rider_id] ||= nil
      end
    
      def current_bike_shop
        session[:bike_shop_id] ||= nil
      end
end
