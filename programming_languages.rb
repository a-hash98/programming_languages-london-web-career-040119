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
  for item in k1
    puts languages.key[item]
  end

end

reformat_languages(languages)
