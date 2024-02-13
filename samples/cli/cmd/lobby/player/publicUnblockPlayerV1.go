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

// PublicUnblockPlayerV1Cmd represents the PublicUnblockPlayerV1 command
var PublicUnblockPlayerV1Cmd = &cobra.Command{
	Use:   "publicUnblockPlayerV1",
	Short: "Public unblock player V1",
	Long:  `Public unblock player V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsUnblockPlayerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicUnblockPlayerV1Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := playerService.PublicUnblockPlayerV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUnblockPlayerV1Cmd.Flags().String("body", "", "Body")
	_ = PublicUnblockPlayerV1Cmd.MarkFlagRequired("body")
	PublicUnblockPlayerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnblockPlayerV1Cmd.MarkFlagRequired("namespace")
}
