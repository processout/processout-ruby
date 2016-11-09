spec = Gem::Specification.new do |s|
    s.name = "processout"
    s.version = "{{ (index .S.Libraries "ruby").Version }}"
    s.required_ruby_version = ">= 1.9.0"
    s.summary = "Ruby bindings for the ProcessOut API"
    s.author = "ProcessOut"
    s.email = "hi@processout.com"
    s.homepage = "https://docs.processout.com"
    s.license = "MIT"

    s.add_dependency("json", ">= 1.0")

    s.files = `git ls-files`.split("\n")
    s.require_paths = ["lib"]
end
