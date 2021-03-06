lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-formatter_cef"
  spec.version = File.read("VERSION").strip
  spec.authors = ["Nicholas DiCola"]
  spec.email   = ["ndicola@microsoft.com"]

  spec.summary       = %q{common event format(CEF) formatter plugin for fluentd.}
  spec.description   = %q{common event format(CEF) formatter plugin for syslog output.}
  spec.homepage      = "https://github.com/dicolanl/fluent-plugin-formatter_cef"
  spec.license       = "Apache-2.0"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = files
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
end
