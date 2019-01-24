# Anagram Finder

A command line application, that verifies if a word is an anagram of any of the words stored in a given file.

## Requirements

Task: Write a command line app in the language of your choice which implements the following user story:

```
As an investigator,
so that I can solve the mystery of the crime, given the clues left behind,
I would like to check whether a word is an anagram of any of the words in a given list.
```
## Acceptance Criteria

The following are accepted as input:
- Word to check (known as the **subject**)
- A file containing the **list of words** to check against

The output should be the **list of words** that are anagrams of the **subject**.

## Approach

Created with Ruby and RSpec (testing framework), using BDD, TDD and OOP principles.

SimpleCov & Rubocop were also used to measure test coverage and ensure code quality.

## The Application (anagram)

The project can be found here: https://github.com/SecretSurfSpot/anagram_finder

### Installation
- Perquisites: Ruby 2.5.1 installed on your machine
- Clone the repo to your local machine
- Run `bundle install`

### Testing
To test the application:
- Open Terminal (or a similar command line interface)
- Run `rspec` from the project root

The above commands result in the output below:

![REPL screenshot](https://github.com/SecretSurfSpot/anagram_finder/blob/master/images/rspec_screenshot.png)

### Use
To use the application, open a Ruby REPL from the project root and type the following commands:

- `irb`
- `require './app'`
- `app = App.new`
- `app.run`

You will then be asked to enter the word you want to check - Enter the word, as below.
- `LISTEN`

You will then be asked to enter the path and name of the file that contains the list of words - Enter the path and filename, as below.
- `./assets/list.txt`

To check another word, enter:

- `app.run`
Enter the word:
- `RaceS`

Enter the file path and name:
- `./assets/list.txt`

To quit the application, enter:
- `exit`

The above commands result in the output below:

![REPL screenshot](https://github.com/SecretSurfSpot/anagram_finder/blob/master/images/interaction_screenshot.png)

## Domain Model

The model below illustrates the high-level structure of the application.

Five classes:

1. **App:** The 'controller' class, with the 'run' method that orchestrates the execution of the relevant class methods.
2. **Inputs:** Gets user inputs: subject and filename, which contains a list of words.
3. **ConvertFileToArray** Takes the filename as input, converts the file contents to an word_array
4. **Anagram_Finder:** Takes the 'subject' and 'word_array', determines if there are any matches (anagrams) and creates an anagram array.
5. **Printer:** Takes the anagram_array, prints each word on a new line.

```
                                                User
                                          ╔════════════╗  
                                          ║            ║ Interacts with application
                                          ║  Terminal  ║ via REPL, e.g. IRB     
                                          ║            ║
                                          ╚════════════╝
                                                 |
                                                 V                                   
                                          ╔════════════╗     
                                          ║            ║ public method: run
                                          ║    App     ║                 
                                          ║  (class)   ║            
                                          ╚════════════╝                    
                                                 |
                                                 V
         ----------------------------------------------------------------------------------                                          
         |                      |                             |                           |
         V                      V                             V                           V
  ╔════════════╗          ╔════════════╗                ╔════════════╗              ╔════════════╗       
  ║   Inputs   ║          ║  Convert   ║                ║  Anagram   ║              ║  Printer   ║       
  ║            ║          ║ FileToArray║                ║  Finder    ║              ║            ║                    
  ║  (class)   ║          ║  (class)   ║                ║  (class)   ║              ║  (class)   ║       
  ╚════════════╝          ╚════════════╝                ╚════════════╝              ╚════════════╝         
  public methods:         public method:                public method:              public method:
  - get_subject           - convert_txt_file_to_array   - create_anagrams_array     - print_anagrams
  - get_filename

```

## Possible Improvements
- Code could be modified so that the file (list of words) is read and stored into an array that persists for the lifetime of the users session on the application
- Testing could be extended to cover edge cases and instances when incorrect input is entered
- The application could be re-written in a language that is better suited to speedy data processing (Python or Java for instance)
