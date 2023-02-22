# REV19: Tue 21 Feb 2023 20:00
# REV09: Fri 27 Jan 2023 10:00
# REV07: Wed 14 Dec 2022 17:00
# REV03: Thu 14 Jul 2022 07:00
# REV01: Sat 29 Jan 2022 13:00
# START: Mon 15 Feb 2021 09:00

SITEURL="doit.vlsm.org"

ALL: 004.md 005.md 006.md 007.md 008.md 009.md 010.md 011.md 012.md 013.md 014.md 015.md .siteHack

004.md: 004.pmd _config.yml Gemfile _layouts/default.html Makefile \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 004.pmd > 004.md

005.md: 005.pmd assets/scripts/sources.list assets/scripts/clean-system.sh \
        assets/scripts/debs.sh 
	python assets/scripts/includeScript.py < 005.pmd > 005.md

006.md: 006.pmd assets/scripts/clean-home.sh \
        assets/scripts/set-rbenv1.sh
	python assets/scripts/includeScript.py < 006.pmd > 006.md

007.md: 007.pmd
	python assets/scripts/includeScript.py < 007.pmd > 007.md

008.md: 008.pmd assets/configs/config-linux-kernel-amd64.txt
	python assets/scripts/includeScript.py < 008.pmd > 008.md

009.md: 009.pmd
	python assets/scripts/includeScript.py < 009.pmd > 009.md

010.md: 010.pmd assets/configs/config-linux-kernel-arm64.txt
	python assets/scripts/includeScript.py < 010.pmd > 010.md

011.md: 011.pmd assets/configs/config-linux-kernel-arm64.txt
	python assets/scripts/includeScript.py < 011.pmd > 011.md

012.md: 012.pmd
	python assets/scripts/includeScript.py < 012.pmd > 012.md

013.md: 013.pmd
	python assets/scripts/includeScript.py < 013.pmd > 013.md

014.md: 014.pmd
	python assets/scripts/includeScript.py < 014.pmd > 014.md

015.md: 015.pmd
	python assets/scripts/includeScript.py < 015.pmd > 015.md


.siteHack: _site/sitemap.xml
	@bash  .siteHack $(SITEURL)
	@touch .siteHack

.phony: ALL

