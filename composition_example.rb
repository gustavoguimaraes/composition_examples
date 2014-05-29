# List built using composition as opposed to Ruby inheritance i.e MyList < Array
class MyList
  def initialize(list =[])
    @list = list
  end

  def list
    @list
  end

  def <<(item)
    @list << item
  end

  def reverse
    MyList.new(@list.reverse)
  end
end

l = MyList.new
l << 1
l << 2
puts l.list.reverse