cflags{
	'-D HAVE_CONFIG_H',
	'-I include',
	'-I $dir',
	'-I $srcdir/h',
}

lib('libbc.a', {'lib/number.c'})
exe('bin/bc', [[
	bc/(main.c bc.c scan.c execute.c load.c storage.c util.c global.c warranty.c)
	libbc.a
]])
file('bin/bc', '755', '$outdir/bin/bc')
man{'doc/bc.1'}

fetch 'curl'