use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Math::Base36',
    'VERSION_FROM'	=> 'Base36.pm', # finds $VERSION
    'PREREQ_PM'		=> {Math::BigInt => 0, Carp => 0 }, # e.g., Module::Name => 1.1
);
