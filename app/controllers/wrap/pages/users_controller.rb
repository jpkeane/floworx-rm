module Wrap
  module Pages
    class UsersController < WrapController
      def edit
        @title = 'Edit user - Pages'
      end

      def list
        @title = 'User list - Pages'
      end

      def view
        @title = 'View user - Pages'
      end
    end
  end
end
