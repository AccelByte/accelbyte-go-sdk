// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSearchSessionsV2Cmd represents the AdminSearchSessionsV2 command
var AdminSearchSessionsV2Cmd = &cobra.Command{
	Use:   "adminSearchSessionsV2",
	Short: "Admin search sessions V2",
	Long:  `Admin search sessions V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		channel, _ := cmd.Flags().GetString("channel")
		deleted, _ := cmd.Flags().GetBool("deleted")
		matchID, _ := cmd.Flags().GetString("matchID")
		partyID, _ := cmd.Flags().GetString("partyID")
		sessionType, _ := cmd.Flags().GetString("sessionType")
		status, _ := cmd.Flags().GetString("status")
		userID, _ := cmd.Flags().GetString("userID")
		input := &session.AdminSearchSessionsV2Params{
			Namespace:   namespace,
			Channel:     &channel,
			Deleted:     &deleted,
			MatchID:     &matchID,
			PartyID:     &partyID,
			SessionType: &sessionType,
			Status:      &status,
			UserID:      &userID,
			Limit:       limit,
			Offset:      offset,
		}
		ok, errOK := sessionService.AdminSearchSessionsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSearchSessionsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSearchSessionsV2Cmd.MarkFlagRequired("namespace")
	AdminSearchSessionsV2Cmd.Flags().String("channel", "", "Channel")
	AdminSearchSessionsV2Cmd.Flags().Bool("deleted", false, "Deleted")
	AdminSearchSessionsV2Cmd.Flags().String("matchID", "", "Match ID")
	AdminSearchSessionsV2Cmd.Flags().String("partyID", "", "Party ID")
	AdminSearchSessionsV2Cmd.Flags().String("sessionType", "", "Session type")
	AdminSearchSessionsV2Cmd.Flags().String("status", "", "Status")
	AdminSearchSessionsV2Cmd.Flags().String("userID", "", "User ID")
	AdminSearchSessionsV2Cmd.Flags().Int64("limit", 20, "Limit")
	_ = AdminSearchSessionsV2Cmd.MarkFlagRequired("limit")
	AdminSearchSessionsV2Cmd.Flags().Int64("offset", 0, "Offset")
	_ = AdminSearchSessionsV2Cmd.MarkFlagRequired("offset")
}
