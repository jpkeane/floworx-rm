module Wrap
  module Pages
    class ArticlesController < WrapController
      def edit
        @title = 'Edit article - Pages'
      end

      def list
        @title = 'Article list - Pages'
      end
    end
  end
end
