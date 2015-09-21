require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    match = false
    entry = [name, phone_number, email]
    @entries.each do |entry| 
      name == entry.name ? match = true : match = false
      phone_number == entry.phone_number ? match = true : match = false
      email == entry.email ? match = true : match = false
      if match == true
        @entries.delete(entry)
        break
      end
    end
  end
  
  def size
      @entries.size
  end
  
end
