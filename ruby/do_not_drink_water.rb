def separate_liquids(glass)
  res = []
  liquids = { H: 1.36, W: 1.0, A: 0.87, O: 0.8 }
  aux = glass.flatten
  aux.map{ |i| liquids[i.to_sym] }.
  sort.map{ |i| liquids.invert[i].to_s }.
  each_slice(glass.first.length) do |elem|
      res << elem
  end
  res
end