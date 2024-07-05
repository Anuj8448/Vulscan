#! /usr/bin/env python3
from setuptools import setup

import pathlib

# The directory containing this file
HERE = pathlib.Path(__file__).parent

with open("requirements.txt") as f:
    required = f.read().splitlines()

# The text of the README file
README = (HERE / "README.md").read_text()

setup(
    name                =   "vulscan",
    version             =   '1',
    description         =   "The Multi-Tool Web Vulnerability Scanner.",
    long_description    =   README,
    long_description_content_type = "text/markdown",
    url                 =   "https://github.com/Anuj8448/Vulscan",
    author              =   "Anuj Tanwar",
    py_modules          =   ['vulscan',],
    install_requires    =   required,
    entry_points        =   {'console_scripts': ['vulscan=vulscan:main', ],},
    python_requires=">=3.6",
)
