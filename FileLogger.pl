#!/usr/bin/perl
use strict;
use warnings;

use lib 'lib';
use FileLogger;

# my $fh = FileLogger::open("logtest.log");
#
# FileLogger::log(1, "This is a test message", $fh);
#
# FileLogger::close($fh);

FileLogger::write_log('logtest.log', 1, 'This is a test message' );

FileLogger::read_log('logtest.log');
