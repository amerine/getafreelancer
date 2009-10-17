require 'rubygems'
require 'test/unit'
require 'shoulda'
%w(matchy fakeweb).each { |x| require x }

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'getafreelancer'

class Test::Unit::TestCase
end
