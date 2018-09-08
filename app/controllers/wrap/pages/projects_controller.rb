module Wrap
  module Pages
    class ProjectsController < WrapController
      def item
        @title = 'Project item - Pages'
      end

      def list
        @title = 'Project list - Pages'
      end
    end
  end
end
