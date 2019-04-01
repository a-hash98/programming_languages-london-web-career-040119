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
  k = languages[:oo].keys.concat(languages[:functional].keys).uniq
  k1 = languages[:oo].keys
  k2 = languages[:functional].keys
  #get type
  for item in k1
      puts languages[:oo][item][:type]
  end
  for item in k1
      puts languages[:oo][item][:type]
  end
end

puts reformat_languages(languages)
