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

// AdminGetPlayerSessionAttributeCmd represents the AdminGetPlayerSessionAttribute command
var AdminGetPlayerSessionAttributeCmd = &cobra.Command{
	Use:   "adminGetPlayerSessionAttribute",
	Short: "Admin get player session attribute",
	Long:  `Admin get player session attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		attribute, _ := cmd.Flags().GetString("attribute")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetPlayerSessionAttributeParams{
			Attribute: attribute,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := playerService.AdminGetPlayerSessionAttribute(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetPlayerSessionAttributeCmd.Flags().StringP("attribute", "", " ", "Attribute")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("attribute")
	AdminGetPlayerSessionAttributeCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("namespace")
	AdminGetPlayerSessionAttributeCmd.Flags().StringP("userId", "", " ", "User id")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("userId")
}
