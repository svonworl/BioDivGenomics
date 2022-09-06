default : lint run
.PHONY : default

# The `dockstore yaml` requires dockstore cli 1.13.0-rc.0 or later versions.
# https://discuss.dockstore.org/t/yaml-command-line-validator-tool/5577/7
lint :
	dockstore yaml validate --path .
.PHONY : lint

# Run the wdl file on local.
run :
	dockstore tool launch \
		--local-entry hello.wdl \
		--json hello.inputs.json
.PHONY : run
