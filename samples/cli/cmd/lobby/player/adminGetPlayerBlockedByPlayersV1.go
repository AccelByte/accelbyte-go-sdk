// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerBlockedByPlayersV1Cmd represents the AdminGetPlayerBlockedByPlayersV1 command
var AdminGetPlayerBlockedByPlayersV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerBlockedByPlayersV1",
	Short: "Admin get player blocked by players V1",
	Long:  `Admin get player blocked by players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetPlayerBlockedByPlayersV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerService.AdminGetPlayerBlockedByPlayersV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerBlockedByPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerBlockedByPlayersV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerBlockedByPlayersV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerBlockedByPlayersV1Cmd.MarkFlagRequired("userId")
}
