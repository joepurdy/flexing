VNC_URL := $(shell  echo "$$GITPOD_WORKSPACE_URL" | awk '{gsub("://", "://6080-", $$URL); print $$URL}')

all:
	sudo killall firefox || exit 0
	firefox https://duckduckgo.com &
	gp preview --external "$(VNC_URL)"

start:
	firefox https://duckduckgo.com &
	gp preview --external "$(VNC_URL)"