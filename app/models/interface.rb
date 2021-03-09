class Interface

  attr_accessor :user
  
  def run
    welcome
    sleep(1.5)
    login_or_register
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
    puts "Please enter your username"
    username = STDIN.gets.chomp
    puts "Please enter your password"
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
    puts "Please enter a username"
    username = STDIN.gets.chomp
    puts "Please enter a password"
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



end