SOURCE  = draft-huque-dnsop-blacklies-ent

all:	$(SOURCE).txt $(SOURCE).html

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml -n --text

$(SOURCE).html:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml -n --html

clean:
	rm -rf $(SOURCE).txt $(SOURCE).html
