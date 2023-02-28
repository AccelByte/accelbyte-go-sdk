// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdParty

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteThirdPartyConfigCmd represents the AdminDeleteThirdPartyConfig command
var AdminDeleteThirdPartyConfigCmd = &cobra.Command{
	Use:   "adminDeleteThirdPartyConfig",
	Short: "Admin delete third party config",
	Long:  `Admin delete third party config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyService := &lobby.ThirdPartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party.AdminDeleteThirdPartyConfigParams{
			Namespace: namespace,
		}
		noContent, errNoContent := thirdPartyService.AdminDeleteThirdPartyConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success: %+v", noContent)

		return nil
	},
}

func init() {
	AdminDeleteThirdPartyConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
