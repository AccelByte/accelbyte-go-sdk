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

// AdminBulkUnblockPlayersV1Cmd represents the AdminBulkUnblockPlayersV1 command
var AdminBulkUnblockPlayersV1Cmd = &cobra.Command{
	Use:   "adminBulkUnblockPlayersV1",
	Short: "Admin bulk unblock players V1",
	Long:  `Admin bulk unblock players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsListUnblockPlayerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminBulkUnblockPlayersV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := playerService.AdminBulkUnblockPlayersV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminBulkUnblockPlayersV1Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkUnblockPlayersV1Cmd.MarkFlagRequired("body")
	AdminBulkUnblockPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUnblockPlayersV1Cmd.MarkFlagRequired("namespace")
	AdminBulkUnblockPlayersV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminBulkUnblockPlayersV1Cmd.MarkFlagRequired("userId")
}
