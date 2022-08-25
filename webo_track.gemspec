require_relative "lib/webo_track/version"

Gem::Specification.new do |spec|
  spec.name        = "webo_track"
  spec.version     = WeboTrack::VERSION
  spec.authors     = ["Kiransai-webonise"]
  spec.email       = ["kiran.sai@weboniselab.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Add assets, users."
  spec.description = "Add assets, users."
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3.1"
end
