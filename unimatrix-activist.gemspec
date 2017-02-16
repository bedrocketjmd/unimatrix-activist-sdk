# coding: utf-8
lib = File.expand_path( '../lib/', __FILE__ )
$LOAD_PATH.unshift( lib ) unless $LOAD_PATH.include?( lib )
require 'unimatrix/activist/version'

Gem::Specification.new do | spec |
  spec.name          = "unimatrix-activist"
  spec.version       = Unimatrix::Activist::VERSION
  spec.homepage      = "http://sportsrocket.com"
  spec.authors       = [ "Matthew Yang" ]
  spec.email         = [ "matthewyang@sportsrocket.com" ]
  spec.summary       = "Unimatrix::Activist is used to communicate with Activist."
  spec.description   = "The unimatrix-activist facilitates making requests to the Unimatrix Activist application"
  spec.license       = "MIT"

  spec.require_paths = [ "lib" ]
  spec.files         = Dir.glob( "{lib}/**/*" )

  spec.add_runtime_dependency( "activesupport", ">= 4.2" )
  spec.add_runtime_dependency( "addressable" )
  spec.add_runtime_dependency( "fnv", "~> 0.2" )

  spec.add_development_dependency( "pry", "~> 0.10.1" )
  spec.add_development_dependency( "pry-nav" )
end
