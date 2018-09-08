module Wrap
  module Pages
    class ArticlesController < ApplicationController
      def edit
        @title = 'Edit article - Pages'
      end

      def list
        @title = 'Article list - Pages'
      end
    end
  end
end
