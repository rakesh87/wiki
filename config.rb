sanitizer = Gollum::Sanitization.new
sanitizer.protocols['a']['href'].concat ['ssh', 'vnc'] # Protocols
sanitizer.elements.concat ['div', 'script', 'noscript', 'a', 'span'] # Tags
sanitizer.attributes['a'].push 'target' # Attributes
Precious::App.set(:wiki_options, {:sanitization => sanitizer})