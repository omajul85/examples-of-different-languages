def remove(s)
  s.gsub(/[ab]/, "") 
end

def dragon n, s = "Fa"
  return '' unless n.is_a? Integer
  return '' if n < 0
  if n == 0
    return remove(s)
  else
    dragon n -= 1, s = s.gsub(/[ab]/, 'a' => 'aRbFR', 'b' => 'LFaLb')
  end
end