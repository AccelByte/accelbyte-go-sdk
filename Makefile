# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

.PHONY: samples

samples:
	find -type f -name main.go -print0 | xargs -0 -I{} sh -c 'echo "Building: $$(dirname {}) ..." && docker run -t --rm -v $$(pwd):/data/ -w /data/$$(dirname {}) golang:1.15 go build || exit 255'
