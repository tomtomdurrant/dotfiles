function l --wraps='exa -a' --wraps='exa -al' --description 'alias l=exa -al'
  exa -al $argv; 
end
