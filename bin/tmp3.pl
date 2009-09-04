#!/usr/bin/perl

use strict; use warnings;
use FindBin;

use vars qw($LIB);

BEGIN {
    $LIB ="$FindBin::Bin/../lib";
}

use lib $LIB;


use RoseDB;
my $db =  RoseDB->new(type => 'main', domain => 'development');
my $dbh = $db->dbh;
