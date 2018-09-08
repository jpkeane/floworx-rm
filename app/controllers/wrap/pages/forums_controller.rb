module Wrap
  module Pages
    class ForumsController < ApplicationController
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
