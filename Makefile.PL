use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'Astro::SunTime',
   VERSION_FROM => 'SunTime.pm',
   PREREQ_PM =>
	{ # I know some of these come with perl, but we can't be too careful
	POSIX			=> 0,
	Time::ParseDate		=> 0,
	},                         
);

