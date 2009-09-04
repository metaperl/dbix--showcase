use IO qw(File Handle);

my $io = do 
{
    if (shift) 
    {
	my $tmp = IO::Handle->new;

	die "open failed: $!" unless $tmp->fdopen(fileno(STDOUT),"w");
	$tmp;
    } 
    else 
    {
	my $tmp = IO::File->new('tmp.out', 'w');
	$tmp;
    }
};

$io->print(<<__EOC__);
hi there
whats up
__EOC__


