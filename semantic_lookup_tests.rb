require_relative 'semantic_lookup'
require 'test/unit'

class SemanticLookupTest < Test::Unit::TestCase
	include SemanticLookup
	def test_methods_passing_test
		assert_equal([:take], methods_passing_test([1,2,3], 2, [1,2]))
		assert_equal([:first, :last, :pop, :shift, :sample], methods_passing_test([5], 5))
	end
end