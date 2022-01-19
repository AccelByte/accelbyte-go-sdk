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

// publicGetPlayerBlockedByPlayersV1Cmd represents the publicGetPlayerBlockedByPlayersV1 command
var publicGetPlayerBlockedByPlayersV1Cmd = &cobra.Command{
	Use:   "publicGetPlayerBlockedByPlayersV1",
	Short: "Public get player blocked by players V1",
	Long:  `Public get player blocked by players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicGetPlayerBlockedByPlayersV1Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := playerService.PublicGetPlayerBlockedByPlayersV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetPlayerBlockedByPlayersV1Cmd)
	publicGetPlayerBlockedByPlayersV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetPlayerBlockedByPlayersV1Cmd.MarkFlagRequired("namespace")
}
