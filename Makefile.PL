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
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DBIx-Showcase-*' },
);
