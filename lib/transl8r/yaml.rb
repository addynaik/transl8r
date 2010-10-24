module Transl8r
  class Yaml
    def initialize(data)
      @data = data
    end
    
    def translation
      translate
    end
    
    private
      def translate
        translated_data = {}
        if @data.class == Hash
          @data.each_pair do |key, value|
            translated_data[key] = translate(value)
          end
          return translated_data
        else
          return Translate.t(@data, Google::Language::Languages['en'], Google::Language::Languages['es'])
        end
      end
  end
end