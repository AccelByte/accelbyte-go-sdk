// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionbrowser

import (
	"github.com/AccelByte/sample-apps/cmd/sessionbrowser/session"
	"github.com/spf13/cobra"
)

// SessionbrowserCmd represents the service's child command
var SessionbrowserCmd = &cobra.Command{
	Use:   "Sessionbrowser",
	Short: "Sessionbrowser to get all the commands",
}

func init() {
	SessionbrowserCmd.AddCommand(session.GetTotalActiveSessionCmd)
	SessionbrowserCmd.AddCommand(session.GetActiveCustomGameSessionsCmd)
	SessionbrowserCmd.AddCommand(session.GetActiveMatchmakingGameSessionsCmd)
	SessionbrowserCmd.AddCommand(session.AdminGetSessionCmd)
	SessionbrowserCmd.AddCommand(session.QuerySessionCmd)
	SessionbrowserCmd.AddCommand(session.CreateSessionCmd)
	SessionbrowserCmd.AddCommand(session.GetSessionByUserIDsCmd)
	SessionbrowserCmd.AddCommand(session.GetSessionCmd)
	SessionbrowserCmd.AddCommand(session.UpdateSessionCmd)
	SessionbrowserCmd.AddCommand(session.DeleteSessionCmd)
	SessionbrowserCmd.AddCommand(session.JoinSessionCmd)
	SessionbrowserCmd.AddCommand(session.DeleteSessionLocalDSCmd)
	SessionbrowserCmd.AddCommand(session.AddPlayerToSessionCmd)
	SessionbrowserCmd.AddCommand(session.RemovePlayerFromSessionCmd)
	SessionbrowserCmd.AddCommand(session.GetRecentPlayerCmd)
}
