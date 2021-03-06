def foo(x)
  yield x
  yield 1
end

foo("str") do |x|
  x
end

foo(:sym) do |x|
  if 1+1
    x
  else
    1
  end
end

__END__
# Classes
class Object
  def foo : (:sym | String) { (:sym | Integer | String) -> (:sym | Integer | String) } -> (:sym | Integer | String)
end
