module Wrap
  module Pages
    class MessagesV3Controller < WrapController
      def compose
        @title = 'Compose message v3 - Pages'
      end

      def item
        @title = 'Message item v3 - Pages'
      end

      def list
        @title = 'Messages list v3 - Pages'
      end
    end
  end
end
