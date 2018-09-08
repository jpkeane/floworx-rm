module Wrap
  module Pages
    class TicketsController < WrapController
      def edit
        @title = 'Edit ticket - Pages'
      end

      def list
        @title = 'Ticket list - Pages'
      end
    end
  end
end
