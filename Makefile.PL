use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DBIx::Showcase',
    AUTHOR              => q{Terrence Brannon <metaperl@gmail.com>},
    VERSION_FROM        => 'lib/DBIx/Showcase.pm',
    ABSTRACT_FROM       => 'lib/DBIx/Showcase.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => 
    {
	'Bread::Board' => 0,
        'Test::More' => 0,

	'App::Cmd' => 0,
	'IO::Prompt' => 0,

	'DBIx::Class' => 0,
	'DBIx::DataModel' => 0,
	'Rose::Conf' => 0,
	'Rose::Conf::FileBased' => 0,
	'Rose::DB::Object' => 0,
	'SQL::DB' => 0,


    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DBIx-Showcase-*' },
);
