require_relative 'app'
# require_relative 'book'

def display_menu
  puts <<~MENU
    Welcome to the Library App!
    Please choose an option:
    1. List all books
    2. List all people
    3. Create a person
    4. Create a book
    5. Create a rental
    6. List all rentals for a given person id
    7. Quit
  MENU
end

def handle_choice(choice, app)
  case choice
  when 1 then list_all_books(app)
  when 2 then list_all_people(app)
  when 3 then create_person(app)
  when 4 then create_book(app)
  when 5 then create_rental(app)
  when 6 then list_rentals_by_id(app)
  when 7 then return false
  else
    puts "Invalid number\n"
    true
  end
end

def list_all_books(app)
  app.display_books
end

def list_all_people(app)
  app.display_people
end

def create_person(app)
  app.add_person
end

def create_book(app)
  app.add_book
end

def create_rental(app)
  app.add_rental
end

def list_rentals_by_id(app)
  app.retal_by_id
end

def main
  app = App.new

  loop do
    display_menu
    choice = gets.chomp.to_i
    break unless handle_choice(choice, app)
  end
end

main
