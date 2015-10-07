#!/usr/bin/env ruby

# 再帰呼び出しでループ処理

arr = (1..100).to_a

def recursion(arr)
  return if arr.size == 0
  p arr.shift
  recursion(arr)
end

recursion(arr)
