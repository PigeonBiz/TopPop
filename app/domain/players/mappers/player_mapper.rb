# frozen_string_literal: true

require_relative 'score_mapper'

module PlayerInformation
  module Player
    # search  and build
    class SearchMapper
      def initialize(name, score, _gateway_class = Player::Api)
        @data['name'] = name
        @data['score'] = score
      end

      def add_score(data)
        build_entity(data)
      end

      def build_entity(data)
        DataMapper.new(data).build_entity
      end

      # Extracts entity specific elements from data structure
      class DataMapper
        def initialize(data)
          @player_data = data
        end

        def build_entity
          Entity::Information.new(
            name:,
            scores:
          )
        end

        def name
          @player_data['name']
        end

        def scores
          ScoreMapper.new(@player_data['score'], player_id).build2sid
        end
      end
    end
  end
end
