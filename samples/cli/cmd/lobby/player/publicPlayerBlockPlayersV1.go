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

// PublicPlayerBlockPlayersV1Cmd represents the PublicPlayerBlockPlayersV1 command
var PublicPlayerBlockPlayersV1Cmd = &cobra.Command{
	Use:   "publicPlayerBlockPlayersV1",
	Short: "Public player block players V1",
	Long:  `Public player block players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsBlockPlayerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicPlayerBlockPlayersV1Params{
			Body:      body,
			Namespace: namespace,
		}
		errCreated := playerService.PublicPlayerBlockPlayersV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPlayerBlockPlayersV1Cmd.Flags().String("body", "", "Body")
	_ = PublicPlayerBlockPlayersV1Cmd.MarkFlagRequired("body")
	PublicPlayerBlockPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPlayerBlockPlayersV1Cmd.MarkFlagRequired("namespace")
}
