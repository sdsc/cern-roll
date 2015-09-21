#!/usr/bin/perl -w
# cern roll installation test.  Usage:
# cern.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my @packages = ('root', 'geant', 'clhep');
my $isInstalled = -d '/opt/cern';
my $output;
my $TESTFILE = 'tmpcern';

# cern-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'cern installed');
  foreach my $package(@packages) {
    ok(-d "/opt/cern/$package", "$package installed");
  }
} else {
  ok(! $isInstalled, 'cern not installed');
}

my $packageHome = '/opt/cern/root';
SKIP: {
  skip 'root not installed', 1 if ! -d $packageHome;
  $output = `module load cern; $packageHome/test/stress -b 2>&1`;
  my $count = 0;
  foreach my $line (split(/\n/, $output)) {
    $count++ if $line =~ /OK/;
  }
  ok($count == 16, 'root works');
}

$packageHome = '/opt/cern/geant';
SKIP: {
  skip 'geant not installed', 1 if ! -d $packageHome;
  skip 'geant test needs update';
  $output = `module load cern; cd $packageHome/examples/basic/B5/build; ./exampleB5 ./exampleB5.in 2>&1`;
  ok($output =~ /Total Energy \(MeV\)  : 2.481598204255104e-062.481598204255104e-06/, 'geant works');
}

$packageHome = '/opt/cern/clhep';
SKIP: {
  skip 'clhep not installed', 1 if ! -d $packageHome;
  `module load cern; $packageHome/tests/testMatrix >& $TESTFILE.clhep.out`;
  $output = `diff $packageHome/tests/testMatrix.output $TESTFILE.clhep.out`;
  ok($output eq "", 'clhep works');
}

SKIP: {
  skip 'cern not installed', 3 if ! $isInstalled;
  `/bin/ls /opt/modulefiles/applications/cern/[0-9]* 2>&1`;
  ok($? == 0, 'cern module installed');
  `/bin/ls /opt/modulefiles/applications/cern/.version.[0-9]* 2>&1`;
  ok($? == 0, 'cern version module installed');
  ok(-l '/opt/modulefiles/applications/cern/.version',
     'cern version module link created');
}

`rm -fr $TESTFILE*`;
