// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetEpicGamesIAPConfigCmd represents the GetEpicGamesIAPConfig command
var GetEpicGamesIAPConfigCmd = &cobra.Command{
	Use:   "getEpicGamesIAPConfig",
	Short: "Get epic games IAP config",
	Long:  `Get epic games IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.GetEpicGamesIAPConfigParams{
			Namespace: namespace,
		}
		ok, err := iapService.GetEpicGamesIAPConfigShort(input)
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
	GetEpicGamesIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEpicGamesIAPConfigCmd.MarkFlagRequired("namespace")
}
