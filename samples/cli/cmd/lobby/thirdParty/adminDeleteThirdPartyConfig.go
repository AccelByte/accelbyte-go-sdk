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

// adminDeleteThirdPartyConfigCmd represents the adminDeleteThirdPartyConfig command
var adminDeleteThirdPartyConfigCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyService.AdminDeleteThirdPartyConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteThirdPartyConfigCmd)
	adminDeleteThirdPartyConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDeleteThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
