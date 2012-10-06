lambeth_opendatastore
=====================

A repository for files scraped from [www.lambeth.gov.uk](http://www.lambeth.gov.uk/Services/CouncilDemocracy/DataProtectionFOI/OpenData.htm)
by [Zenlan](http://www.zenlan.com/)

Initial commit preserves original data content and filename.
Subsequent commits may reformat content, check commit messages.

Currently, only CSV files are supported.

Currency Format:
----------------
sed -r -i 's/,"?\s?£?([0-9]+),?([0-9]+)?,?([0-9]+)?(\.[0-9]{2})\s?"?/,\1\2\3\4/g' *.csv

Unquotes values, removes currency notation (£) and thousand separators (,)

Date Format:
----------------
TBD