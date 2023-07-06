## no critic: TestingAndDebugging::RequireUseStrict
package Task::BeLike::PERLANCAR::Used;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: All my modules which I currently use and install on a new perl installation

=pkggroup Included modules

#CODE: for (`setop --diff <(lcpan author-dists PERLANCAR | dist2mod) <(cpanmodules ls-entries PERLANCAR::Unused)`) { print "=pkg $_\n" }

=cut
