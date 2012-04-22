module GuidesHelper
  
  def item_bg_class(index)
    row = (index / 4) % 2
    return (index + row) % 2 == 1 ? "darker" : ""
  end
  
end
