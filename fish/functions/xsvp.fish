function xsvp --wraps=xsv --description 'alias xsvp=xsv $argv[1] -d\"\|\" $argv[2..-1]'
    xsv $argv[1] -d"|" $argv[2..-1]
end
