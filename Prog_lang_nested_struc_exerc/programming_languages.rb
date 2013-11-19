#Organizing Nested Data
 
#I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
 

new_hash= {}
languages.each do | style , hash_style |
  hash_style.each do | language, lang_hash |
   new_hash[language] = lang_hash unless new_hash[language]
    new_hash[language][:style] = [] unless new_hash[language][:style]
    new_hash[language][:style] << style 
  end 
end

puts new_hash


# I would like you to reformat the nested structure to be of the following form
 
# {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "interpreted"
#   }
#   etc etc
# }
