fun! tmuxline#presets#powerline#get()
  let bar = tmuxline#new()

  call bar.left.add('z', '#(mpc --host 127.0.0.2 | head -1)')
  call bar.left.add_left_sep()
  call bar.left.add('a', '#S')
  call bar.left.add_left_sep()

  call bar.right.add_right_sep()
  call bar.right.add('y', '%A %b %d')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', '%r')
  call bar.right.add_right_sep()

  call bar.right.add('z', 'Used #(/usr/bin/df / --output=pcent | tail -1) of /')

  call bar.right.add('z', '#h')

  call bar.win.add('win.dim', '#I')
  call bar.win.add_left_alt_sep()
  call bar.win.add('win', '#W')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin.dim', '#I')
  call bar.cwin.add_left_alt_sep()
  call bar.cwin.add('cwin', '#W')
  call bar.cwin.add_left_sep()

  let bar.options['status-justify'] = 'left'
  let bar.win_options['window-status-activity-attr'] = 'none'

  return bar
endfun

