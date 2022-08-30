// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package constants

import "time"

const (
	ServiceName = "Title Matchmaking Service"

	ChannelListKey          = "matchmaking:channelList"
	MatchmakingRequestQueue = "matchmaking:requestQueue"

	MatchmakingNotificationTopic = "NOTIF"

	DefaultTime = 30 * time.Second
)
