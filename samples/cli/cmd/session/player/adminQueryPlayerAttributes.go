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

// AdminQueryPlayerAttributesCmd represents the AdminQueryPlayerAttributes command
var AdminQueryPlayerAttributesCmd = &cobra.Command{
	Use:   "adminQueryPlayerAttributes",
	Short: "Admin query player attributes",
	Long:  `Admin query player attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		users, _ := cmd.Flags().GetString("users")
		input := &player.AdminQueryPlayerAttributesParams{
			Namespace: namespace,
			Users:     &users,
		}
		ok, errOK := playerService.AdminQueryPlayerAttributesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryPlayerAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryPlayerAttributesCmd.MarkFlagRequired("namespace")
	AdminQueryPlayerAttributesCmd.Flags().String("users", "", "Users")
}
