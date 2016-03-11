class PolyTreeNode

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  # def assign_parent(parent)
  #   @parent = parent
  #   parent.children
  # end
  def parent=(parent)
    @parent = parent
    parent.children << self
  end

  def children
    @children
  end

  def value
    @value
  end

  def inspect
    @value.inspect
  end
end

root = PolyTreeNode.new("Root")
gen1c1 = PolyTreeNode.new("Gen1/Child1")
gen1c2 = PolyTreeNode.new("Gen1/Child2")

gen1c1.parent = root
gen1c2.parent = root

# p root.children.map {|child| child.value}
p root.children
