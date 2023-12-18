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

// PublicGetRecentPlayerCmd represents the PublicGetRecentPlayer command
var PublicGetRecentPlayerCmd = &cobra.Command{
	Use:   "publicGetRecentPlayer",
	Short: "Public get recent player",
	Long:  `Public get recent player`,
	RunE: func(cmd *cobra.Command, args []string) error {
		recentPlayerService := &session.RecentPlayerService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &recent_player.PublicGetRecentPlayerParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
		}
		ok, errOK := recentPlayerService.PublicGetRecentPlayerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetRecentPlayerCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetRecentPlayerCmd.MarkFlagRequired("namespace")
	PublicGetRecentPlayerCmd.Flags().String("userId", "", "User id")
	_ = PublicGetRecentPlayerCmd.MarkFlagRequired("userId")
	PublicGetRecentPlayerCmd.Flags().Int64("limit", 20, "Limit")
}
