// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerAttributesCmd represents the AdminGetPlayerAttributes command
var AdminGetPlayerAttributesCmd = &cobra.Command{
	Use:   "adminGetPlayerAttributes",
	Short: "Admin get player attributes",
	Long:  `Admin get player attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetPlayerAttributesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerService.AdminGetPlayerAttributesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerAttributesCmd.MarkFlagRequired("namespace")
	AdminGetPlayerAttributesCmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerAttributesCmd.MarkFlagRequired("userId")
}
