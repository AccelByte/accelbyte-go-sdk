// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteSteamIAPConfigCmd represents the DeleteSteamIAPConfig command
var DeleteSteamIAPConfigCmd = &cobra.Command{
	Use:   "deleteSteamIAPConfig",
	Short: "Delete steam IAP config",
	Long:  `Delete steam IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &i_a_p.DeleteSteamIAPConfigParams{
			Namespace: namespace,
		}
		errInput := iapService.DeleteSteamIAPConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteSteamIAPConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteSteamIAPConfigCmd.MarkFlagRequired("namespace")
}
