require "test_helper"

require "getto/repository/page"

module Getto::Repository::PageTest
  describe Getto::Repository::Page do
    describe "pages" do
      it "returns page number by count/limit" do
        assert_equal(Getto::Repository::Page.new(count:   0, limit: 100).pages, 0)
        assert_equal(Getto::Repository::Page.new(count:   1, limit: 100).pages, 1)
        assert_equal(Getto::Repository::Page.new(count:  50, limit: 100).pages, 1)
        assert_equal(Getto::Repository::Page.new(count: 100, limit: 100).pages, 1)
        assert_equal(Getto::Repository::Page.new(count: 101, limit: 100).pages, 2)
        assert_equal(Getto::Repository::Page.new(count: 200, limit: 100).pages, 2)
        assert_equal(Getto::Repository::Page.new(count: 202, limit: 100).pages, 3)
      end
    end
  end
end
