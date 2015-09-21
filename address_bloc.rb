require_relative 'controlers/menu_controller'

menu = MenuController.new

system "clear"
puts "Welcome to AddressBloc!"

menu.menu_main
