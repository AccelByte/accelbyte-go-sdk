// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package recentPlayer

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/recent_player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetRecentTeamPlayerCmd represents the AdminGetRecentTeamPlayer command
var AdminGetRecentTeamPlayerCmd = &cobra.Command{
	Use:   "adminGetRecentTeamPlayer",
	Short: "Admin get recent team player",
	Long:  `Admin get recent team player`,
	RunE: func(cmd *cobra.Command, args []string) error {
		recentPlayerService := &session.RecentPlayerService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		userId, _ := cmd.Flags().GetString("userId")
		input := &recent_player.AdminGetRecentTeamPlayerParams{
			Namespace: namespace,
			Limit:     &limit,
			UserID:    &userId,
		}
		ok, errOK := recentPlayerService.AdminGetRecentTeamPlayerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetRecentTeamPlayerCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetRecentTeamPlayerCmd.MarkFlagRequired("namespace")
	AdminGetRecentTeamPlayerCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetRecentTeamPlayerCmd.Flags().String("userId", "", "User id")
}
