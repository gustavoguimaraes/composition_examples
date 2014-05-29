# List built using composition as opposed to Ruby inheritance i.e MyList < Array
require 'forwardable'

class MyList
  extend Forwardable
  def_delegators :@list, :<<, :length

  def initialize(list = [])
    @list = list
  end

  def list
    @list
  end

  def reverse
    MyList.new(@list.reverse)
  end
end
