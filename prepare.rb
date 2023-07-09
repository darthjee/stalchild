#!/usr/local/bin/ruby

class String
  def camel
    gsub(/_(.)/, &:upcase).gsub(/_/, "").gsub(/^(.)/, &:upcase)
  end
end

def prepare(type, project_name, base='stalchild')
  system("cp -R #{type} #{project_name}")

  system("sed -i -e 's/#{base}/#{project_name}/g' $(find #{project_name} -type f)")
  system("sed -i -e 's/#{base.upcase}/#{project_name.upcase}/g' $(find #{project_name} -type f)")
  system("sed -i -e 's/#{base.camel}/#{project_name.camel}/g' $(find #{project_name} -type f)")
  system("rename s/#{base}/#{project_name}/ $(find #{project_name} -iname '*#{base}*')")
end

begin
  prepare *ARGV
rescue ArgumentError
  puts "Usage:\nprepare.rb project_type new_project_name"
  puts "Eg.\nprepare.rb taa my_awesome_project"
end
