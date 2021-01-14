#!/bin/bash

source=blorb.asciidoc
HTML_output=Blorb-Specification.html

vAsciidoctor=$(asciidoctor --version | grep -o -m1 -E '[0-9]\.[0-9]+\.[0-9]+')
vRuby=$(ruby --version | grep -o -m1 -E '[0-9]\.[0-9]+\.[0-9]+')

echo -e "\n\033[37;1mDependencies version info:"
echo -e "\033[31;1m *\033[35m Ruby v$vRuby"
echo -e "\033[31;1m *\033[35m Asciidoctor v$vAsciidoctor"

echo -e "\033[37;1mBuilding standalone doc: \033[33;1m$HTML_output\033[0m\n"

asciidoctor \
	--failure-level WARN \
	--timings \
	--verbose \
	--safe-mode unsafe \
	-o  $HTML_output \
		$source || {
			echo "*** FAILED ***"
			exit 1
			}
exit
