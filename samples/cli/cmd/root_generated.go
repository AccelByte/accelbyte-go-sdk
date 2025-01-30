// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cmd

import (
	"github.com/AccelByte/sample-apps/cmd/achievement"
	"github.com/AccelByte/sample-apps/cmd/ams"
	"github.com/AccelByte/sample-apps/cmd/basic"
	"github.com/AccelByte/sample-apps/cmd/challenge"
	"github.com/AccelByte/sample-apps/cmd/chat"
	"github.com/AccelByte/sample-apps/cmd/cloudsave"
	"github.com/AccelByte/sample-apps/cmd/csm"
	"github.com/AccelByte/sample-apps/cmd/dsartifact"
	"github.com/AccelByte/sample-apps/cmd/dslogmanager"
	"github.com/AccelByte/sample-apps/cmd/dsmc"
	"github.com/AccelByte/sample-apps/cmd/gametelemetry"
	"github.com/AccelByte/sample-apps/cmd/gdpr"
	"github.com/AccelByte/sample-apps/cmd/group"
	"github.com/AccelByte/sample-apps/cmd/iam"
	"github.com/AccelByte/sample-apps/cmd/inventory"
	"github.com/AccelByte/sample-apps/cmd/leaderboard"
	"github.com/AccelByte/sample-apps/cmd/legal"
	"github.com/AccelByte/sample-apps/cmd/lobby"
	"github.com/AccelByte/sample-apps/cmd/loginqueue"
	"github.com/AccelByte/sample-apps/cmd/match2"
	"github.com/AccelByte/sample-apps/cmd/matchmaking"
	"github.com/AccelByte/sample-apps/cmd/platform"
	"github.com/AccelByte/sample-apps/cmd/qosm"
	"github.com/AccelByte/sample-apps/cmd/reporting"
	"github.com/AccelByte/sample-apps/cmd/seasonpass"
	"github.com/AccelByte/sample-apps/cmd/session"
	"github.com/AccelByte/sample-apps/cmd/sessionbrowser"
	"github.com/AccelByte/sample-apps/cmd/sessionhistory"
	"github.com/AccelByte/sample-apps/cmd/social"
	"github.com/AccelByte/sample-apps/cmd/ugc"
)

func initGenerated() {
	RootCmd.AddCommand(achievement.AchievementCmd)
	RootCmd.AddCommand(ams.AmsCmd)
	RootCmd.AddCommand(basic.BasicCmd)
	RootCmd.AddCommand(challenge.ChallengeCmd)
	RootCmd.AddCommand(chat.ChatCmd)
	RootCmd.AddCommand(cloudsave.CloudsaveCmd)
	RootCmd.AddCommand(csm.CsmCmd)
	RootCmd.AddCommand(dsartifact.DsartifactCmd)
	RootCmd.AddCommand(dslogmanager.DslogmanagerCmd)
	RootCmd.AddCommand(dsmc.DsmcCmd)
	RootCmd.AddCommand(gametelemetry.GametelemetryCmd)
	RootCmd.AddCommand(gdpr.GdprCmd)
	RootCmd.AddCommand(group.GroupCmd)
	RootCmd.AddCommand(iam.IamCmd)
	RootCmd.AddCommand(inventory.InventoryCmd)
	RootCmd.AddCommand(leaderboard.LeaderboardCmd)
	RootCmd.AddCommand(legal.LegalCmd)
	RootCmd.AddCommand(lobby.LobbyCmd)
	RootCmd.AddCommand(loginqueue.LoginqueueCmd)
	RootCmd.AddCommand(match2.Match2Cmd)
	RootCmd.AddCommand(matchmaking.MatchmakingCmd)
	RootCmd.AddCommand(platform.PlatformCmd)
	RootCmd.AddCommand(qosm.QosmCmd)
	RootCmd.AddCommand(reporting.ReportingCmd)
	RootCmd.AddCommand(seasonpass.SeasonpassCmd)
	RootCmd.AddCommand(session.SessionCmd)
	RootCmd.AddCommand(sessionbrowser.SessionbrowserCmd)
	RootCmd.AddCommand(sessionhistory.SessionhistoryCmd)
	RootCmd.AddCommand(social.SocialCmd)
	RootCmd.AddCommand(ugc.UgcCmd)
}
