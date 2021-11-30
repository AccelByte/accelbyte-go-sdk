// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"github.com/google/uuid"
	"strings"
)

// GenerateUUID generates uuid without hyphens
func GenerateUUID() string {
	id, _ := uuid.NewRandom()
	return strings.ReplaceAll(id.String(), "-", "")
}
