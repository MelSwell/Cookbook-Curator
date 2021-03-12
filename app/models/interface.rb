class Interface

  attr_accessor :user
  
  def run
    welcome
    sleep(1.5)
    login_or_register
    main_menu
  end

  def welcome
    puts "Welcome to Cookbook Curator, let's get cookin'!"
  end

  def login_or_register
    puts "Are you a new or returning chef?"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "returning"
      login
    elsif answer.downcase.strip == "new"
      register
    else
      warning_message
      sleep(1.5)
      puts "Please enter either 'returning' or 'new'"
      sleep(2)
      system 'clear'
      login_or_register
    end
  end

  def login
    puts "Please enter your username:"
    username = STDIN.gets.chomp
    puts "Please enter your password:"
    password = STDIN.gets.chomp
    @user = User.find_by(username: username, password: password)
    until @user
      warning_message
      sleep(1.5)
      system 'clear'
      login
    end
    system 'clear'
    puts "Welcome back, chef #{@user.username}! Thanks for joining us again!"
    @user
  end

  def register
    puts "Please enter a username:"
    username = STDIN.gets.chomp
    puts "Please enter a password:"
    password = STDIN.gets.chomp
    if User.find_by(username: username)
      puts "That name is in use by another chef, please try again"
      sleep(1.5)
      register
    else
      @user = User.create(username: username, password: password)
      system 'clear'
      puts "Thanks for joining us, chef #{@user.username}. Get it while it's hot!"
    end
  end

  def warning_message
    puts "Sorry, those are not valid ingredients"
  end

  def main_menu
    puts "\nWhat would you like to do?"
    puts "Enter 'browse' to browse all recipes by category"
    puts "Enter 'favorites' to look through your favorite recipes"
    puts "Enter 'aspiring' to look through recipes you aspire to cook"
    puts "Enter 'exit!' to leave"
    answer = STDIN.gets.chomp 
    if answer.downcase.strip == "browse"
      system 'clear'
      browse_all  
    elsif answer.downcase.strip == "favorites"
      system 'clear'
      browse_favorites
    elsif answer.downcase.strip == "aspiring"
      system 'clear'
      browse_aspiring
    elsif answer.downcase.strip == "exit!"
      custom_exit
    else
      warning_message
      main_menu
    end
  end

  def browse_all
    list_all_by_cat_and_view  
  end

  def list_all_by_cat_and_view
    Recipe.list_all_categories
    puts "\nEnter 'back' to return to the main menu"
    puts "Enter 'exit!' to leave"
    puts "Enter a category name to view that category's recipes:"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      main_menu
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif !Recipe.list_all_categories.include?(answer.capitalize)
      warning_message
      puts "\n"
      list_all_by_cat_and_view
    else
      system 'clear'
      Recipe.list_recipes_by_cat(answer.capitalize)
      list_all_and_view_helper
    end
  end

  def list_all_and_view_helper
   puts "\nEnter 'back' to go back"
   puts "Enter 'exit!' to leave"
   puts "Enter a recipe name:"
   answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      list_all_by_cat_and_view
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif Recipe.find_by_name(answer) == nil
      warning_message
      sleep(1.5)
      list_all_and_view_helper
    else
      chosen_recipe = Recipe.find_by_name(answer)
      system 'clear'
      chosen_recipe.display_nicely
      add_to_aspirings_or_go_back(chosen_recipe)
      main_menu
    end
  end
    
    

  def add_to_aspirings_or_go_back(chosen_recipe)
    puts "\nWould you like to add this recipe to your aspiring recipes, or go back?"
    puts "Enter 'add' to add to your list of recipes you'd like to try"
    puts "Enter 'back' to go back"
    puts "Enter 'exit!' to leave"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "add" && @user.aspiring_recipes.exists?(recipe_id: chosen_recipe.id)
      puts "You must really love this recipe! You already aspire to cook this one!"
      sleep(2)
      system 'clear'
      list_all_by_cat_and_view
    elsif answer.downcase.strip == "add" 
      @user.create_aspiring(chosen_recipe)
      puts "Successfully added to your list of recipes you'd like to cook! Go get cookin'!"
      sleep (2)
      system 'clear'
    elsif answer.downcase.strip == "back"
      system 'clear'
      browse_all
    elsif answer.downcase.strip == "exit!"
      custom_exit
    else
      warning_message
      sleep(1.5)
      add_to_aspirings_or_go_back(chosen_recipe)
    end
  end

  def browse_favorites
    list_favorites_by_cat_and_view
  end

  def list_favorites_by_cat_and_view
    @user.list_user_favorite_cats
    puts "\nEnter 'back' to return to the main menu"
    puts "Enter 'exit!' to leave"
    puts "Enter a category name to view that category's recipes:"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      main_menu
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif !@user.list_user_favorite_cats.include?(answer.capitalize)
      warning_message
      sleep(1.5)
      list_favorites_by_cat_and_view
    else
      system 'clear'
      @user.list_recipe_names_by_cat(answer.capitalize)
      list_favorites_and_view_helper
    end
  end

  def list_favorites_and_view_helper
    puts "\nEnter 'back' to go back"
    puts "Enter 'exit!' to leave"
    puts "Enter a recipe name:"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      list_favorites_by_cat_and_view
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif @user.find_recipe_by_name(answer) ==  nil 
      warning_message
      sleep(1.5)
      list_favorites_and_view_helper
    else
      chosen_recipe = @user.find_recipe_by_name(answer)
      system 'clear'
      chosen_recipe.display_nicely
      if @user.recipe_note(chosen_recipe) != nil
        puts "\nNote to self: #{@user.recipe_note(chosen_recipe)}"
      end
      puts "\nEnter 'delete' to delete recipe from your favorites"
      puts "Enter 'note' to edit or delete note"
      puts "Enter 'main menu' to return to main menu"
      puts "Enter 'exit!' to leave"
      answer = STDIN.gets.chomp
      if answer.downcase.strip == "delete"
        @user.delete_favorite_recipe(chosen_recipe)
        puts "Recipe deleted, so sad :("
        sleep(2)
        system 'clear'
        main_menu
      elsif answer.downcase.strip == "note"
        note_helper(chosen_recipe) 
      elsif answer.downcase.strip == "main menu"
        system 'clear'
        main_menu
      elsif answer.downcase.strip == "exit!"
        custom_exit
      else
        warning_message
        sleep(1.5)
        system 'clear'
        list_favorites_by_cat_and_view
      end
    end
  end

  def note_helper(chosen_recipe)
    puts "Enter 'delete' to delete your note"
    puts "Enter 'update' to add or update your note"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "delete"
      @user.delete_note(chosen_recipe)
      system 'clear'
      list_favorites_by_cat_and_view
    elsif answer.downcase.strip == "update"
      puts "What would you like to remind yourself about this recipe?"
      response = STDIN.gets.chomp
      @user.update_note(chosen_recipe, response)
      system 'clear'
      list_favorites_by_cat_and_view
    end
  end

  def browse_aspiring
    list_aspirings_by_cat_and_view
  end

  def list_aspirings_by_cat_and_view
    @user.list_aspiring_cats
    puts "\nEnter 'back' to return to the main menu"
    puts "Enter 'exit!' to leave"
    puts "Enter a category name to view that category's recipes:"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      main_menu
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif !@user.list_aspiring_cats.include?(answer.capitalize)
      warning_message
      sleep(1.5)
      list_aspirings_by_cat_and_view
    else
      system 'clear'
      @user.list_aspiring_names_by_cat(answer.capitalize)
      list_aspirings_and_view_helper
    end
  end

  def list_aspirings_and_view_helper
   puts "\nEnter 'back' to go back"
   puts "Enter 'exit!' to leave"
   puts "Enter a recipe name:"
   answer = STDIN.gets.chomp
    if answer.downcase.strip == "back"
      system 'clear'
      list_aspirings_by_cat_and_view
    elsif answer.downcase.strip == "exit!"
      custom_exit
    elsif @user.find_aspiring_recipe_by_name(answer) == nil 
      warning_message
      sleep(1.5)
      list_aspirings_and_view_helper
    else 
      chosen_recipe = @user.find_aspiring_recipe_by_name(answer)
      chosen_recipe.display_nicely
      move_to_favorites_or_go_back(chosen_recipe)
      main_menu
    end
  end

  def move_to_favorites_or_go_back(chosen_recipe)
    puts "\nWould you like to move this recipe to your favorites, delete it, or go back?"
    puts "Enter 'move' to move to favorites"
    puts "Enter 'delete' to remove this recipe"
    puts "Enter 'back' to go back"
    puts "Enter 'exit!' to leave"
    answer = STDIN.gets.chomp
    if answer.downcase.strip == "move" && @user.favorite_recipes.exists?(recipe_id: chosen_recipe.id)
      puts "You must really love this recipe! It's already in your favorites!"
      sleep(2)
      system 'clear'
      list_aspirings_by_cat_and_view
    elsif answer.downcase.strip == "move" 
      @user.create_favorite(chosen_recipe)
      @user.delete_aspiring_recipe(chosen_recipe)
      puts "Successfully moved to favorites! Go get cookin'!"
      sleep (2)
      system 'clear'
    elsif answer.downcase.strip == "delete"
      @user.delete_aspiring_recipe(chosen_recipe)
      puts "Successfully removed from this list!"
      sleep(2)
      system 'clear'
      list_aspirings_by_cat_and_view
    elsif answer.downcase.strip == "back"
      system 'clear'
      browse_all
    elsif answer.downcase.strip == "exit!"
      custom_exit
    else
      warning_message
      sleep(1.5)
      move_to_favorites_or_go_back(chosen_recipe)
    end
  end


  def custom_exit
    puts "Thanks for dining with us! Have a great day!"
    exit 0
  end

end