#!/usr/bin/perl
use strict;
use warnings;

use lib 'lib';
use FileLogger;

FileLogger::open("logtest.log");

FileLogger::log(1,"This is a test message");

FileLogger::close();
