// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetBulkPlayerBlockedPlayersV1Cmd represents the AdminGetBulkPlayerBlockedPlayersV1 command
var AdminGetBulkPlayerBlockedPlayersV1Cmd = &cobra.Command{
	Use:   "adminGetBulkPlayerBlockedPlayersV1",
	Short: "Admin get bulk player blocked players V1",
	Long:  `Admin get bulk player blocked players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsGetBulkAllPlayerBlockedUsersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.AdminGetBulkPlayerBlockedPlayersV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playerService.AdminGetBulkPlayerBlockedPlayersV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetBulkPlayerBlockedPlayersV1Cmd.Flags().String("body", "", "Body")
	_ = AdminGetBulkPlayerBlockedPlayersV1Cmd.MarkFlagRequired("body")
	AdminGetBulkPlayerBlockedPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetBulkPlayerBlockedPlayersV1Cmd.MarkFlagRequired("namespace")
}
