module Wrap
  module Pages
    class ForumsController < WrapController
      def discussion
        @title = 'Forum discussion - Pages'
      end

      def list
        @title = 'Forum list - Pages'
      end

      def threads
        @title = 'Forum threads - Pages'
      end
    end
  end
end
