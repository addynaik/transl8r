namespace :i18n do
  desc "Translates all locale file using google translate"
  task :translate => :environment do
    puts Transl8r::Yaml.new("Hello").translation.inspect
  end
end