require 'yaml'
require 'pathname'
require 'yaml'
output = ARGV.shift
base = ARGV.shift
parts_dir = ARGV.shift

base_yaml = YAML.load_file(base)
services = base_yaml['services']
Dir.glob("#{Pathname(parts_dir).expand_path.to_path}/*{yaml,yml}") do |docker_compose|
  yaml = YAML.load_file(docker_compose)
  _services = yaml['services']
  
  # check conflict
  origin_length = services.keys.length
  add_length = _services.keys.length
  uniq = (services.keys + _services.keys).uniq
  unless uniq.length == origin_length + add_length
    raise "conflict between compose files: #{docker_compose}"
  end
  
  services.merge!(_services)
end

open(Pathname(output).expand_path.to_path, 'w') do |f|
  YAML.dump(base_yaml, f)  
end
