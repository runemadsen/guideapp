module GuidesHelper
  
  def item_bg_class(index)
    row = (index / 4) % 2
    return (index + row) % 2 == 1 ? "darker" : ""
  end
  
  def alpha_or_omega(index)
    index % 2 == 0 ? "alpha" : "omega"
  end
  
end
