# frozen_string_literal: true

module TopPop
  module Mixins
    # line credit calculation methods
    module  VideoGenerator
      def G_daily_videos
        TopPop::Repository::Videos#.random(5)
      end
    end
  end
end
