require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_names = {}
data.each do |color_gender_live, info|
  info.each do |keys, names|
    names.each do |name|
      if pigeon_names[name] == nil 
        pigeon_names[name] = {}
        binding.pry
    end 
    if pigeon_names[name][color_gender_live] == nil
      pigeon_names[name][color_gender_live] = []
      end
    pigeon_names[name][color_gender_live].push(keys.to_s)
    end
    end
  end
  pigeon_names
end


# first off we create a new hash to store our data in.
# is our data hash we must iterate over the :color, :gender: and :lives -- i.e (color_gender_live); along with their key/value pairs i.e(info)
#we then want to iterate over our info(keys) and find the names(name) inside of them