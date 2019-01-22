#!/usr/bin/env python
# -*- coding: utf-8 -*-


__all__ = [
    '__version__', '__author__', '__authors__', '__contact__', '__license__',
    '__major__', '__minor__', '__micro__', '_package_name', '_url',
    '_description', '_python', '_required', '_extra', '_classifiers'
]


__version__ = '0.0.1'
__author__ = u"gui sch"
__authors__ = [
	__author__,
]
__contact__ = 'gui.sch@gmail.com'
__license__ = 'AGPLv3+'

# don't edit this
__major__, __minor__, __micro__ = list(map(int, __version__.split('.')))


_package_name = 'magie'
_url = 'https://github.com/ceyzeriat/{}'.format(_package_name)
_description = """the best magical package"""
_python = '>=3.6.0'

# What packages are required for this module to be executed?
# and which are not in requirements.txt yet
_required = [
    # 'requests', 'maya', 'records',
]


# What packages are optional?
_extra = {
    # 'fancy feature': ['django'],
}


# https://pypi.python.org/pypi?%3Aaction=list_classifiers
_classifiers = [
    'License :: OSI Approved :: GNU Affero General '\
    	'Public License v3 or later (AGPLv3+)',
    'Development Status :: 4 - Beta',
    'Environment :: Console',
    'Intended Audience :: Developers',
    'Intended Audience :: Education',
    'Intended Audience :: Science/Research',
    'Operating System :: OS Independent',
    'Programming Language :: Python',
]
