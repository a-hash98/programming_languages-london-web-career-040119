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


def reformat_languages(languages)
  new_hash = {}
  #get languages
  k = languages[:oo].keys.concat(languages[:functional].keys)
  t = []
  k1 = languages[:oo].keys
  k2 = languages[:functional].keys

  #get type
  for item in k1
      t.push(languages[:oo][item][:type])
  end
  for item in k2
      t.push(languages[:functional][item][:type])
  end
  #get style
  for item in k
    if k1.include?(item) && k2.include?(item)
      puts "both #{item}"
    elsif k1.include?(item)
      puts ":oo #{item}"
    elsif k2.include?(item)
      puts ":functional #{item}"
    end
 end
 #populating the hash
 puts k
 for item in k
   new_hash[item] = {}
 end
 #insert type
 for item in k1
     new_hash[item] = {:type => languages[:oo][item][:type]}
 end
 for item in k2
     new_hash[item] = {:type => languages[:functional][item][:type]}
 end
 puts new_hash


end

reformat_languages(languages)
