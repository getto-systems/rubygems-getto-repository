module Getto
  module Repository
    class Page
      def initialize(count:, limit:)
        @count = count
        @limit = limit
      end

      def pages
        (@count.to_f / @limit).ceil
      end
    end
  end
end
