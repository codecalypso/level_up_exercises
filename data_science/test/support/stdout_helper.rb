def run_command(cmd)
  IO.popen(cmd).each do |line|
    (output ||= '') << line
    puts line.chomp
  end
  output
end

def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end

