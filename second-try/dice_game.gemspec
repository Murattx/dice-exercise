# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name		= "dice_game"
  spec.version		= '1.0'
  spec.authors		= ["Alex Gaw"]
  spec.email		= ["alexanderjgaw@gmail.com"]
  spec.summary		= %q{Dice Game}
  spec.description	= %q{Coding exercise from a prospective employer. This is the second pass after receiving feedback.}
  spec.homepage		= "http://domainforproject.com"
  spec.license		= ""

  spec.files		= ['lib/dice_game.rb']
  spec.executables	= ['bin/dice_game']
  spec.test_files	= ['tests/test_dice_game.rb']
  spec.require_paths 	= ["lib"]
end
