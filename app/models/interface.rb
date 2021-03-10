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
    puts "Welcome back, chef #{@user.username}! Thanks for joining us again."
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
      puts "Thanks for joining us, chef #{@user.username}. Get it while it's hot!"
    end
  end

  def warning_message
    puts "Sorry, those are not valid ingredients."
  end

  def main_menu
    puts "\nWhat would you like to do?"
    puts "Enter 'browse' to browse all recipes by category."
    puts "Enter 'favorites' to look through your favorite recipes."
    puts "Enter 'exit!' to leave."
    answer = STDIN.gets.chomp 
    if answer == "browse"
      system 'clear'
      browse_all  
    elsif answer == "favorites"
      system 'clear'
      browse_favorites
    elsif answer == "exit!"
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
    recipe_cats = Recipe.all.map { |recipe| recipe.category }.uniq
    recipe_cats.each { |cat| puts cat }
    puts "\nEnter 'back' to return to the main menu."
    puts "Enter 'exit!' to leave."
    puts "Enter a category name to view that category's recipes:"
    answer = STDIN.gets.chomp
    if answer == "back"
      system 'clear'
      main_menu
    elsif answer == "exit!"
      custom_exit
    elsif !recipe_cats.include?(answer)
      warning_message
      puts "\n"
      list_all_by_cat_and_view
    else
      system 'clear'
      Recipe.where(category: answer).each { |recipe| puts recipe.recipe_name }
      list_all_and_view_helper
    end
  end

  def list_all_and_view_helper
   puts "\nEnter 'back' to go back."
   puts "Enter a recipe name:"
   answer = STDIN.gets.chomp
    if answer == "back"
      system 'clear'
      list_all_by_cat_and_view
    elsif Recipe.all.find_by(recipe_name: answer) == nil 
      warning_message
      list_all_and_view_helper
    else
      chosen_recipe = Recipe.all.find_by(recipe_name: answer)
      system 'clear'
      puts "#{chosen_recipe.recipe_name}:"
      puts "\n#{chosen_recipe.ingredients}"
      puts "\n#{chosen_recipe.prep}"
      puts "\nYield: #{chosen_recipe.yield} servings"
      add_to_favorites_or_go_back(chosen_recipe)
      main_menu
    end
  end

  def add_to_favorites_or_go_back(chosen_recipe)
    puts "\nWould you like to add this recipe to your favorites, or go back?"
    puts "Enter 'add' or 'back':"
    answer = STDIN.gets.chomp
    if answer == "add" && @user.favorite_recipes.exists?(recipe_id: chosen_recipe.id)
      puts "You must really love this recipe! It's already in your favorites!"
      sleep(2)
      system 'clear'
      list_all_by_cat_and_view
    elsif answer == "add" 
      @user.create_favorite(chosen_recipe)
      puts "Successfully added to favorites! Go get cookin'!"
      sleep (2)
      system 'clear'
    elsif answer == "back"
      system 'clear'
      browse_all
    elsif answer == "exit!"
      custom_exit
    else
      warning_message
    end
  end

  def browse_favorites
    list_favorites_by_cat_and_view
  end

  def list_favorites_by_cat_and_view
    recipe_cats = @user.recipes.map { |recipe| recipe.category }.uniq
    recipe_cats.each { |cat| puts cat }
    puts "\nEnter 'back' to return to the main menu."
    puts "Enter 'exit!' to leave."
    puts "Enter a category name to view that category's recipes:"
    answer = STDIN.gets.chomp
    if answer == "back"
      system 'clear'
      main_menu
    elsif answer == "exit!"
      custom_exit
    elsif !recipe_cats.include?(answer)
      warning_message
      puts "\n"
      list_favorites_by_cat_and_view
    else
      system 'clear'
      @user.recipes.where(category: answer).each { |recipe| puts recipe.recipe_name }
      list_favorites_and_view_helper
    end
  end

  def list_favorites_and_view_helper
    puts "\nEnter 'back' to go back."
    puts "Enter a recipe name:"
    answer = STDIN.gets.chomp
    if answer == "back"
      system 'clear'
      list_favorites_by_cat_and_view
    elsif @user.recipes.find_by(recipe_name: answer) == nil 
      warning_message
      list_favorites_and_view_helper
    else
      chosen_recipe = @user.recipes.find_by(recipe_name: answer)
      system 'clear'
      puts "#{chosen_recipe.recipe_name}:"
      puts "\n#{chosen_recipe.ingredients}"
      puts "\n#{chosen_recipe.prep}"
      puts "\nYield: #{chosen_recipe.yield} servings"
      if @user.recipe_note(chosen_recipe) != nil
        puts "\nNote to self: #{@user.recipe_note(chosen_recipe)}"
      end
      puts "\nEnter 'delete' to delete recipe from your favorites."
      puts "Enter 'note' to edit or delete note"
      puts "Enter 'main menu' to return to main menu"
      answer = STDIN.gets.chomp
      if answer == "delete"
        @user.delete_favorite_recipe(chosen_recipe)
        puts "Recipe deleted, so sad :("
        sleep(2)
        system 'clear'
        main_menu
      elsif answer == "note"
        note_helper(chosen_recipe) 
      elsif answer == "main menu"
        system 'clear'
        main_menu
      end
    end
  end

  def note_helper(chosen_recipe)
    puts "Enter 'delete' to delete your note"
    puts "Enter 'update' to add or update your note"
    answer = STDIN.gets.chomp
    if answer == "delete"
      @user.delete_note(chosen_recipe)
      list_favorites_by_cat_and_view
    elsif answer == "update"
      puts "What would you like to remind yourself about this recipe?"
      response = STDIN.gets.chomp
      @user.update_note(chosen_recipe, response)
      list_favorites_by_cat_and_view
    end
  end

  def custom_exit
    puts "Thanks for dining with us! Have a great day!"
    exit 0
  end

end