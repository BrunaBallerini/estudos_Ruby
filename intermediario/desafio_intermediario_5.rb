class User
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

class UserManager
  @instance = nil

  private_class_method :new

  def self.instance
    @instance ||= new
  end

  def initialize
    @users = []
    @next_id = 1
  end

  def add_user(name)
    user = User.new(@next_id, name)
    @users << user
    @next_id += 1
  end

  def list_users
    @users.each do |user|
      puts "#{user.id} - #{user.name}"
    end
  end
end

class Main
  def self.main
    quantity = gets.chomp.to_i

    user_manager = UserManager.instance

    quantity.times do
      name = gets.chomp
      user_manager.add_user(name)
    end

    user_manager.list_users
  end
end

# Exemplo de utilização
Main.main
