require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  new_array = []


  for first in pigeon_data.keys
    for second in pigeon_data[first].keys

      # for third in pigeon_data[first][second]
      new_array << pigeon_data[first][second]
    end
  end
  new_array = new_array.flatten.uniq
  new_hash ={}

  new_array.each do |bird|
    new_hash[bird] = {}
    pigeon_data.each do |key, value|

      value.each do |attribute, element|
        # binding.pry

          if element.include?(bird)
            # binding.pry
            if new_hash[bird].keys.include?(key)
                new_hash[bird][key] << attribute.to_s
            else
              new_hash[bird][key] = [attribute.to_s]
          end
        end
      end
    end
  end
new_hash
  end
