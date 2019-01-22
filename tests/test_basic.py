#!/usr/bin/env python
# -*- coding: utf-8 -*-


import pytest


from .context import magie


def get_thought():
	assert len(magie.core.get_thought()) > 0
