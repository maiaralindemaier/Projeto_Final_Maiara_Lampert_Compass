require "json"
require "yaml"
require "ostruct"

class Static
    @static = JSON.parse(YAML.load(File.read("features/support/factory/static/hml.yml")).to_json,object_class: OpenStruct)
    
    def self.set(info)
        @static.send(info)
    end
end