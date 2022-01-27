// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package player

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetLobbyCCUCmd represents the AdminGetLobbyCCU command
var AdminGetLobbyCCUCmd = &cobra.Command{
	Use:   "AdminGetLobbyCCU",
	Short: "Admin get lobby CCU",
	Long:  `Admin get lobby CCU`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.AdminGetLobbyCCUParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := playerService.AdminGetLobbyCCU(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetLobbyCCUCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetLobbyCCUCmd.MarkFlagRequired("namespace")
}
