require "pry"

def reformat_languages(languages_hash)
  new_hash = {}
  languages_hash.each do |style, data|
    data.each do |language, types|
      if new_hash[language] == nil
        new_hash[language] = {}
        new_hash[language][:type] = types[:type]
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
  # your code here
end

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

reformat_languages(languages)
