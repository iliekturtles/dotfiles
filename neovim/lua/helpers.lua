function Range(start, count)
  local i = -1

  return function()
    i = i + 1

    if i < count then
      return start + i
    end
  end
end
