# Inputs - this class contains methods that capture the required inputs
# from the command line ('subject' and list of words (file))
class Inputs
  def capture_subject
    p 'Enter a word, and the app will see if there is a match'
    subject = STDIN.gets.chomp
  end

  def capture_filename
    p 'Enter the path and name of the file that contains the list of words'
    filename = STDIN.gets.chomp
  end
end
