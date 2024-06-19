#!/usr/local/bin/ruby

class String
  def camel
    gsub(/_(.)/, &:upcase).gsub(/_/, "").gsub(/^(.)/, &:upcase)
  end
end

def prepare(project_name, base='stalchild')
  system("sed -i -e 's/#{base}/#{project_name}/g' $(find project/ -type f)")
  system("sed -i -e 's/#{base.upcase}/#{project_name.upcase}/g' $(find project/ -type f)")
  system("sed -i -e 's/#{base.camel}/#{project_name.camel}/g' $(find project/ -type f)")
  system("rename s/#{base}/#{project_name}/ $(find project/ -iname '*#{base}*')")
end

begin
  prepare *ARGV
rescue ArgumentError
  puts "Usage:\nprepare.rb new_project_name"
  puts "Eg.\nprepare.rb my_awesome_project"
end
