#!/usr/bin/ruby

class String
  def camel
    gsub(/_(.)/, &:upcase).gsub(/_/, "").gsub(/^(.)/, &:upcase)
  end
end

def prepare(type, project_name)
  system("sed -e 's/stalchild/#{project_name}/g' -i $(find #{type} -type f)")
  system("sed -e 's/STALCHILD/#{project_name.upcase}/g' -i $(find #{type} -type f)")
  system("sed -e 's/Stalchild/#{project_name.camel}/g' -i $(find #{type} -type f)")
end

begin
  prepare *ARGV
rescue ArgumentError
  puts "Usage:\nprepare.rb project_type new_project_name"
  puts "Eg.\nprepare.rb taa my_awesome_project"
end
