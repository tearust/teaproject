#!/bin/sh
obsidian-export ./obsidian ./docs

find docs/_epochs -maxdepth 1 -mindepth 1 -not -name  README.md -execdir mv "{}" ../ \;