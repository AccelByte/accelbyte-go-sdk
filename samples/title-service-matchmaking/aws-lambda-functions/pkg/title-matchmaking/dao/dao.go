// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dao

import (
	"aws-lambda-functions/pkg/title-matchmaking/models"
)

// Channel is the DAO of isolated channelList list to be iterated
type Channel interface {
	// Save stores new channelList/ update old channelList with the same channelList slug
	Save(channelList models.Channel) error
}
