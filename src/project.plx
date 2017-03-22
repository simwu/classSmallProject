use Switch;

print "Enter a valid username: ";

chomp($username=<STDIN>);
until ($username eq "root") {
 print "Invalid username\nPlease try again: ";
 chomp($username=<STDIN>);
}

print "Please enter the password for $username: ";
chomp($password=<STDIN>);
until ($password eq "root") {
 print "Invalid password\nPlease try again: ";
 chomp($password=<STDIN>);
}

print "You are now logged in.\n\n";

my $option = ' ';
while($option ne '0') {
 print "\nMain Menu\n";
 print "1. View anime list\n";
 print "2. Enter an entry to anime list\n";
 print "3. View logo\n";
 print "0. Exit\n\n";
    
 print "Please choose an option: ";
 chomp($option=<STDIN>);

 print "\n";

 switch ($option) {
  case '1' {
   &displayList;
   print "\nReturning to menu\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
  }
  case '2' {
   &addEntry;
   print "\nReturning to menu\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
  }
  case '3' {
   &displayLogo;
   print "\nReturning to menu\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
  }
  case '0' {
   print "Now exiting program\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print ".\n";
   sleep(1);
   print "\n";
  }
  else {
   print "\nNot a  valid option.\n";
  }
 }
}

sub displayList {
 print "List of anime in database: \n\n";
 open(DB,"animelist.txt") || die "Can't open: animelist.txt: $!\n";
 while($line = <DB>) {
  print "$line";
 }
 sleep(5);
 close(DB);
}

sub addEntry {
 print "Please format by: \n";
 print "Title:Type:Studio:Year Released:Source Material\n";
 print "Enter an entry: ";
 my $entryInput = <STDIN>;
 open (DB, ">>animelist.txt") || die "Can't open: animelist.txt: $!\n";
 print DB $entryInput;
 print "\nEntry has been added\n";
 close (DB);
}

sub displayLogo {
 print "--------------------Anime Database--------------------\n";
 open(TXT,"projectlogo.txt") || die "Can't open: projectlogo.txt: $!\n";
 while($line = <TXT>) {
  print "$line";
 }
 sleep(5);
 close(TXT);
}
