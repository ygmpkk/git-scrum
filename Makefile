prefix=/usr/local

# files that need mode 755
EXEC_FILES=git-scrum

# files that need mode 644
SCRIPT_FILES =git-scrum-init
SCRIPT_FILES+=git-scrum-sprint
SCRIPT_FILES+=git-scrum-task
SCRIPT_FILES+=git-scrum-hotfix
SCRIPT_FILES+=git-scrum-release
SCRIPT_FILES+=git-scrum-support
SCRIPT_FILES+=git-scrum-version
SCRIPT_FILES+=gitscrum-common
SCRIPT_FILES+=gitscrum-shFlags

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@test -f gitscrum-shFlags || (echo "Run 'git submodule init && git submodule update' first." ; exit 1 )
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)
