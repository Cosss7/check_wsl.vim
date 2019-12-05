function! IsWSL()
  let uname = substitute(system('uname'),'\n','','')
  if uname == 'Linux'
    let lines = readfile("/proc/version")
    if lines[0] =~ "Microsoft"
        return 1
    endif
  endif
  return 0
endfunction
