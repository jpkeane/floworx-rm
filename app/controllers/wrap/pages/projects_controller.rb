module Wrap
  module Pages
    class ProjectsController < ApplicationController
      def item
        @title = 'Project item - Pages'
      end

      def list
        @title = 'Project list - Pages'
      end
    end
  end
end
