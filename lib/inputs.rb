# Inputs - this class contains methods that inputs (command line input and a file)
class Inputs
  def capture_subject
    p 'enter a word, and the app will see if there is a match'
    subject = STDIN.gets.chomp
  end

  def capture_filename
    p 'enter the path and name of the file'
    filename = STDIN.gets.chomp
  end
end
