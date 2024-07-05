#! /usr/bin/env python3
from setuptools import setup

import pathlib

# The directory containing this file
HERE = pathlib.Path(__file__).parent

# The text of the README file
README = (HERE / "README.md").read_text()

setup(
    name                =   "Vulscan",
    version             =   '1',
    description         =   "The Multi-Tool Web Vulnerability Scanner.",
    long_description    =   README,
    long_description_content_type = "text/markdown",
    url                 =   "https://github.com/Anuj8448/vulscan",
    author              =   "Anuj",
    py_modules          =   ['vulscan',],
    install_requires=[
        "requests",
        "beautifulsoup4",
    ],
    python_requires=">=3.6",
)
