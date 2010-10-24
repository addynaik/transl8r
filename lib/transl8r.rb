if defined?(Rails) && Rails::VERSION::MAJOR == 3
  require 'transl8r/engine' 
  require 'transl8r/yaml' 
  require 'rtranslate'
end
