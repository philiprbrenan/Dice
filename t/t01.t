use Dice;
use Test::More;

my $d = Dice::new(10, 6);                                                       # 10 dice with 6 dots

eval {$d->fix(qw(4))};
ok $@ =~ m"10 throws required, you gave 1";

eval {$d->fix(qw(4 2 6 4 3 6 1 4 4 9))};
ok $@ =~ m"Invalid throw 9. Value 9 is out of range, should be 1 to 6";

if (1) {                                                                        #Tthrows
  $d->throw;
  is_deeply $d->throws, 1;
}

if (1) {                                                                        #Tnew #Tfix #Tanalyze
  my $d = Dice::new(10, 6);
     $d->fix(qw(4 2 6 4 3 6 1 4 4 6));
     $d->analyze;
  is_deeply $d->analysis, <<END;
Four of a kind
Four in a row from one to four
END
}

if (1) {                                                                        #Tthrow
  my $d = Dice::new(10, 6);
     $d->throw();
  ok $d->result->@* == 10;
}

done_testing;
