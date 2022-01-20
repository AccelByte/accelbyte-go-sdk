// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetPlayerBlockedByPlayersV1Cmd represents the adminGetPlayerBlockedByPlayersV1 command
var adminGetPlayerBlockedByPlayersV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := playerService.AdminGetPlayerBlockedByPlayersV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetPlayerBlockedByPlayersV1Cmd)
	adminGetPlayerBlockedByPlayersV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetPlayerBlockedByPlayersV1Cmd.MarkFlagRequired("namespace")
	adminGetPlayerBlockedByPlayersV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetPlayerBlockedByPlayersV1Cmd.MarkFlagRequired("userId")
}