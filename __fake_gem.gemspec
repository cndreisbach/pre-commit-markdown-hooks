Gem::Specification.new do |s|
    s.name = '__fake_gem'
    s.version = '0.0.1'
    s.authors = ['Clinton Dreisbach']
    s.summary = 'A fake gem for a pre-commit hook for linting markdown'
    s.description = 'A fake gem for a pre-commit hook for linting markdown'
    s.add_dependency 'mdl', '0.4.0'
    s.bindir = 'bin'
end
