freedom-routes, Intenet Freedom - generate routes for vpn.
===========================================================

|                |                                                             |
|----------------|------------------------------------------------------       |
| Homepage:      | https://github.com/GutenYe/freedom-routes        |
| Author:	       | Guten                                            |
| License:       | MIT-LICENSE                                                |
| Documentation: | http://godoc.org/github.com/GutenYe/freedom-routes
| Issue Tracker: | https://github.com/GutenYe/freedom-routes/issues |

Use ip data from APNIC to generate routes for vpn to make accessing websites in China use direct link, while accessing foreign websites use vpn. Which make browse websites much faster.

Getting started
---------------

Linux and Openvpn

	$ freedom-routes linux -o /etc/openvpn 
	> create /etc/openvpn/routes-up.sh
	> create /etc/openvpn/routes-down.sh

	$ edit /etc/openvpn/x.conf

		script-security 2
		up ./routes-up.sh
		down ./routes-down.sh

Others, see documentation at [here](https://github.com/GutenYe/chnroutes/blob/master/README.md) (Chinese)

**Add IPs from local**

	# create /etc/freedom-routes
		70.33.217.1/32

**Auto update IP data**

Ip data may change over time, so it's recommand to update every month.

	$ create /etc/cron.monthly/freedom-routes with 0755 mode

		#!/bin/bash

		freedom-routes linux -o /etc/openvpn

Install
-------

	$ [sudo] go get github.com/GutenYe/freedom-routes
	
**Dependencies**

* Go programming language
* iproutes2 (Linux, Mac)

Development 
===========

Contributing 
-------------

* Submit any bugs/features/ideas to github issue tracker.

Please see [Contibution Documentation](https://github.com/GutenYe/freedom-routes/blob/master/CONTRIBUTING.md).

A list of [Contributors](https://github.com/GutenYe/freedom-routes/contributors).

Resources
---------

* [chnroutes](https://github.com/GutenYe/chnroutes): scripts help chinese netizen with vpn.

Copyright
---------

(the MIT License)

Copyright (c) 2013 Guten

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
