#
# Makefile.PL for smtm
#
# smtm --- A global stock ticker for X11 and Windoze
#
# Copyright (C) 1999, 2000, 2001  Dirk Eddelbuettel <edd@debian.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
# 
# $Id: Makefile.PL,v 1.1 2000/06/18 21:16:30 edd Exp edd $
#

use ExtUtils::MakeMaker;

WriteMakefile(
	      'NAME'		=> 'smtm',
	      'VERSION_FROM'	=> 'smtm',
	      'PREREQ_PM'	=> { "Date::Manip"	=> 5.0,
				     "LWP::UserAgent"	=> 1.23,
				     "HTML::Parser"	=> 2.20,
				     "Tk"		=> 800.015
				 },
	      ($] >= 5.005 ?
	       ('ABSTRACT'   	=> 'Stock quote monitor and portfolio tool',
		'AUTHOR'     	=> 'Dirk Eddelbuettel (edd@debian.org)') : ()),
	      EXE_FILES 	=> ['smtm'],
	      'dist'		=> { COMPRESS => 'gzip', 
				     SUFFIX => '.gz', },
);

