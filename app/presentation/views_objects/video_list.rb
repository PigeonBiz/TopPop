# frozen_string_literal: true

require_relative 'video'

module TopPop
  module Views
    # View for a list of video entities
    class VideoList
      def initialize(videos)
        @videos = videos.map { |video| Video.new(video) }
      end

      def each
        @videos.each do |video|
          yield video
        end
      end

      def any?
        @videos.any?
      end
    end
  end
end