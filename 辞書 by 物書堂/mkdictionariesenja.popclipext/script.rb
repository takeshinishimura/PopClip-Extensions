    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "mkdictionaries:///?text={query}&category=en-ja&scope=example"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,CGI.escape(query))

    %x{open "#{url}"}
