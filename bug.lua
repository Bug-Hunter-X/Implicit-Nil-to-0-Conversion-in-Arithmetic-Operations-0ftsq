local function foo(a)
  if a == nil then return nil end
  return a + 1
end

local result = foo(nil)
print(result)  -- Output: nil

result = foo(10)
print(result)  -- Output: 11

result = foo()
print(result) -- Output: attempt to perform arithmetic on a nil value