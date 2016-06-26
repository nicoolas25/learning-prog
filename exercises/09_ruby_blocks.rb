def do_while(&block)
  result = false
  until result
    result = block.call
  end
end

def compose(proc_1, proc_2)
  Proc.new { proc_2.call(proc_1.call) }
end
