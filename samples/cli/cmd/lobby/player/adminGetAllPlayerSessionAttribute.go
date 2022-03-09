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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := playerService.AdminGetAllPlayerSessionAttribute(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminGetAllPlayerSessionAttributeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetAllPlayerSessionAttributeCmd.MarkFlagRequired("namespace")
	AdminGetAllPlayerSessionAttributeCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetAllPlayerSessionAttributeCmd.MarkFlagRequired("userId")
}
