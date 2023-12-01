## no critic: TestingAndDebugging::RequireUseStrict
package Task::BeLike::PERLANCAR::Used;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: All my modules which I currently use and install on a new perl installation

=head1 SYNOPSIS

Here's how I usually bootstrap a fresh perl installation (e.g. after a
C<perlbrew install>):

 % cpanm -n App::cpanm::perlancar
 % cpanm-perlancar -n Task::BeLike::PERLANCAR::Used


=pkggroup Included modules

# BEGIN_CODE
require App::PMVersionsUtils;
for (`bash -c 'setop --diff <(lcpan author-dists PERLANCAR | dist2mod) <(cpanmodules ls-entries PERLANCAR::Unused) <(cpanmodules ls-entries PERLANCAR::Avoided) <(cpanmodules ls-entries PERLANCAR::Retired)'`) {
    chomp;
    next if $_ eq "Task::BeLike::PERLANCAR::Used";
    my $res = App::PMVersionsUtils::version_from_pmversions(module=>$_);
    die "Error when checking minimum version for $_: $res->[0] - $res->[1]" unless $res->[0] == 200;
    my $v = $res->[2] || 0;
    print "=pkg $_ $v\n\n";
 }
# END_CODE

=cut
