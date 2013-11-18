secret_password = "intblakernblaketsashleythblakeashleyall"

get_rid_ashley = secret_password.gsub!("ashley"," ")

blake_get_rid = get_rid_ashley.gsub!("blake","e")

white_space_getrid = blake_get_rid.split(" ")

new_array = []

new_array[0] = white_space_getrid.last
new_array[3] = white_space_getrid.first

new_array[1] = white_space_getrid[1] 

new_array.compact!
joinning_new_array = new_array.join("_")

adding_symbol_to_secret = joinning_new_array.insert(0, ":")

puts adding_symbol_to_secret
