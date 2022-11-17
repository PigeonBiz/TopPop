# frozen_string_literal: true

module TopPop
  module Mixins
    # line credit calculation methods
    module ScoreCalculator
      def initialize(ranking)
        @ranking = ranking
      end

      def check_score(ranking)
        answer = ranking_answer
        score = 0
        score += 1 if answer[0] == ranking[0]
        score += 1 if answer[1] == ranking[1]
        score += 1 if answer[2] == ranking[2]
        score += 1 if answer[3] == ranking[3]
        score += 1 if answer[4] == ranking[4]
        score
      end

      def ranking_answer
        TopPop::Repository::Videos.ranking
      end
    end
  end
end
