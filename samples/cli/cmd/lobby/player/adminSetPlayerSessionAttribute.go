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

// AdminSetPlayerSessionAttributeCmd represents the AdminSetPlayerSessionAttribute command
var AdminSetPlayerSessionAttributeCmd = &cobra.Command{
	Use:   "adminSetPlayerSessionAttribute",
	Short: "Admin set player session attribute",
	Long:  `Admin set player session attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsSetPlayerSessionAttributeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminSetPlayerSessionAttributeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := playerService.AdminSetPlayerSessionAttributeShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminSetPlayerSessionAttributeCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminSetPlayerSessionAttributeCmd.MarkFlagRequired("body")
	AdminSetPlayerSessionAttributeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSetPlayerSessionAttributeCmd.MarkFlagRequired("namespace")
	AdminSetPlayerSessionAttributeCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminSetPlayerSessionAttributeCmd.MarkFlagRequired("userId")
}
