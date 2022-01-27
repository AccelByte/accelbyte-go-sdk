// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package thirdParty

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetThirdPartyConfigCmd represents the adminGetThirdPartyConfig command
var adminGetThirdPartyConfigCmd = &cobra.Command{
	Use:   "adminGetThirdPartyConfig",
	Short: "Admin get third party config",
	Long:  `Admin get third party config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyService := &lobby.ThirdPartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party.AdminGetThirdPartyConfigParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyService.AdminGetThirdPartyConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetThirdPartyConfigCmd)
	adminGetThirdPartyConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
