// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"strings"

	"github.com/google/uuid"
)

// GenerateID returns UUID without dash
func GenerateID() string {
	id := uuid.New()
	return strings.Replace(id.String(), "-", "", -1)
}

func GenerateMessageID() string {
	return "id: " + GenerateID()
}
