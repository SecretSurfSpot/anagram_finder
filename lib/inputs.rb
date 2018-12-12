# Inputs - this class contains methods that inputs (command line input & a file)
class Inputs
  def capture_subject
    subject = STDIN.gets.chomp
  end

  def capture_file(filename = './assets/list.txt')
    file = File.open(filename, 'r')
  end
end
