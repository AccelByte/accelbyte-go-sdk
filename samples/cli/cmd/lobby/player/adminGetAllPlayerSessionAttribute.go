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

// AdminGetAllPlayerSessionAttributeCmd represents the AdminGetAllPlayerSessionAttribute command
var AdminGetAllPlayerSessionAttributeCmd = &cobra.Command{
	Use:   "adminGetAllPlayerSessionAttribute",
	Short: "Admin get all player session attribute",
	Long:  `Admin get all player session attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetAllPlayerSessionAttributeParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerService.AdminGetAllPlayerSessionAttributeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetAllPlayerSessionAttributeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAllPlayerSessionAttributeCmd.MarkFlagRequired("namespace")
	AdminGetAllPlayerSessionAttributeCmd.Flags().String("userId", "", "User id")
	_ = AdminGetAllPlayerSessionAttributeCmd.MarkFlagRequired("userId")
}
