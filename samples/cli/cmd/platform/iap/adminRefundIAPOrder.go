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

// AdminRefundIAPOrderCmd represents the AdminRefundIAPOrder command
var AdminRefundIAPOrderCmd = &cobra.Command{
	Use:   "adminRefundIAPOrder",
	Short: "Admin refund IAP order",
	Long:  `Admin refund IAP order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		iapOrderNo, _ := cmd.Flags().GetString("iapOrderNo")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.AdminRefundIAPOrderParams{
			IAPOrderNo: iapOrderNo,
			Namespace:  namespace,
		}
		ok, errOK := iapService.AdminRefundIAPOrderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminRefundIAPOrderCmd.Flags().String("iapOrderNo", "", "Iap order no")
	_ = AdminRefundIAPOrderCmd.MarkFlagRequired("iapOrderNo")
	AdminRefundIAPOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRefundIAPOrderCmd.MarkFlagRequired("namespace")
}
