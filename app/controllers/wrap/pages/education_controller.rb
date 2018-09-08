module Wrap
  module Pages
    class EducationController < WrapController
      def courses_v1
        @title = 'Courses v1 - Pages'
      end

      def courses_v2
        @title = 'Courses v2 - Pages'
      end
    end
  end
end
