#!/usr/bin/env python3
"""Point each `resource` in a Formula at its pure-Python wheel instead of the sdist.

Wheels are only unpacked, so the install skips the per-package build (and build
isolation) that `brew update-python-resources` output costs. Run it after that
command: python3 scripts/wheel-resources.py Formula/sync-roms.rb
"""
import json
import re
import sys
import urllib.request

BLOCK = re.compile(r'(  resource "(?P<name>[^"]+)" do\n    url ")(?P<url>[^"]+)(".*?\n    sha256 ")(?P<sha>[0-9a-f]{64})(")', re.S)


def wheel(name, url):
    version = re.search(r"/(?:[^/]+?)-([^-/]+?)(?:\.tar\.gz|-py[^/]*\.whl)$", url).group(1)
    with urllib.request.urlopen(f"https://pypi.org/pypi/{name}/{version}/json") as r:
        files = json.load(r)["urls"]
    wheels = [f for f in files if f["packagetype"] == "bdist_wheel" and f["filename"].endswith("none-any.whl")]
    if not wheels:
        sys.exit(f"{name} {version}: no pure-Python wheel; leave it as an sdist")
    return wheels[0]["url"], wheels[0]["digests"]["sha256"]


def main(path):
    text = open(path).read()

    def sub(m):
        url, sha = wheel(m["name"], m["url"])
        return f'{m[1]}{url}{m[4]}{sha}{m[6]}'

    open(path, "w").write(BLOCK.sub(sub, text))


main(sys.argv[1])
