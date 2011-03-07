
all: html txt

clean:
	rm -rf build

prepare:
	mkdir -p build

html: prepare json-activity-target.xml
	xml2rfc json-activity-target.xml build/json-activity-target.html

txt: prepare json-activity-target.xml
	xml2rfc json-activity-target.xml build/json-activity-target.txt

