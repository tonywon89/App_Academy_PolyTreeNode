class PolyTreeNode

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

def root_node?
  parent.nil?
end

  # def assign_parent(parent)
  #   @parent = parent
  #   parent.children
  # end
  def parent=(new_parent)
    #Alternative way: @parent.children.reject! { |child| child == self}
    parent.children.delete(self) unless self.root_node?
    @parent = new_parent
    new_parent.children << self unless new_parent.nil?
  end

  def children
    @children
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    if children.include?(child_node)
      child_node.parent = nil
    else
      raise "Error! Parent does not have this child."
    end
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
