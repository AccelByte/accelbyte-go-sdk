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

// GetIAPOrderConsumeDetailsCmd represents the GetIAPOrderConsumeDetails command
var GetIAPOrderConsumeDetailsCmd = &cobra.Command{
	Use:   "getIAPOrderConsumeDetails",
	Short: "Get IAP order consume details",
	Long:  `Get IAP order consume details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		iapOrderNo, _ := cmd.Flags().GetString("iapOrderNo")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.GetIAPOrderConsumeDetailsParams{
			IAPOrderNo: iapOrderNo,
			Namespace:  namespace,
		}
		ok, errOK := iapService.GetIAPOrderConsumeDetailsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetIAPOrderConsumeDetailsCmd.Flags().String("iapOrderNo", "", "Iap order no")
	_ = GetIAPOrderConsumeDetailsCmd.MarkFlagRequired("iapOrderNo")
	GetIAPOrderConsumeDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetIAPOrderConsumeDetailsCmd.MarkFlagRequired("namespace")
}
