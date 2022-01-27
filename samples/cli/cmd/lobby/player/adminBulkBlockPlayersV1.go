// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminBulkBlockPlayersV1Cmd represents the AdminBulkBlockPlayersV1 command
var AdminBulkBlockPlayersV1Cmd = &cobra.Command{
	Use:   "AdminBulkBlockPlayersV1",
	Short: "Admin bulk block players V1",
	Long:  `Admin bulk block players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsListBlockedPlayerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminBulkBlockPlayersV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := playerService.AdminBulkBlockPlayersV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminBulkBlockPlayersV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = AdminBulkBlockPlayersV1Cmd.MarkFlagRequired("body")
	AdminBulkBlockPlayersV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminBulkBlockPlayersV1Cmd.MarkFlagRequired("namespace")
	AdminBulkBlockPlayersV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminBulkBlockPlayersV1Cmd.MarkFlagRequired("userId")
}
