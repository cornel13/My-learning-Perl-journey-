package FileLogger;
# FileLogger.pm
use 5.010;
use strict;
use warnings;
use autodie;

my $LEVEL = 1; # default log level

sub write_log {
  my $logfile = shift;
  my $log_level = shift;
  my $log_msg = shift;
  open(my $fh, '>>', $logfile);
  print $fh "Time: ", scalar(localtime), "\n";
  if($log_level <= $LEVEL){
     print $fh "$log_msg\n";
  }
  close $fh;
}

sub read_log {
  my $logfile = shift;

  open(my $fh, '<', $logfile);
  while (my $line = <$fh>){
    chomp $line;
    print "$line\n";
  }
  close $fh;
}

# sub open{
#    my $logfile = shift;
#    # open log file for appending
#    open(my $fh, '>>', $logfile) or die "cannot open the log file $logfile: $!";
#    # write logged time:
#    print $fh "Time: ", scalar(localtime), "\n";
#    return $fh;
# }
#
# sub log{
#    my ( $log_level, $log_msg, $fh ) = @_;
#    # append log if the passed log level is lower than
#    # the module log level
#    if($log_level <= $LEVEL){
#       print $fh "$log_msg\n";
#    }
# }
#
# sub close{
#    my $fh = shift;
#    close $fh or die "cannot close the log file $!";
# }

# sub set_level{
#    # set the log level
#    my $log_level = shift;
#    # check if the passed log level is a number
#    if($log_level =~ /^\d+$/){
#       $LEVEL = $log_level;
#    }
# }

1;
