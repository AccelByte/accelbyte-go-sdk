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

// AdminGetIAPOrderLineItemsCmd represents the AdminGetIAPOrderLineItems command
var AdminGetIAPOrderLineItemsCmd = &cobra.Command{
	Use:   "adminGetIAPOrderLineItems",
	Short: "Admin get IAP order line items",
	Long:  `Admin get IAP order line items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		iapOrderNo, _ := cmd.Flags().GetString("iapOrderNo")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminGetIAPOrderLineItemsParams{
			IAPOrderNo: iapOrderNo,
			Namespace:  namespace,
			UserID:     userId,
		}
		ok, errOK := iapService.AdminGetIAPOrderLineItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetIAPOrderLineItemsCmd.Flags().String("iapOrderNo", "", "Iap order no")
	_ = AdminGetIAPOrderLineItemsCmd.MarkFlagRequired("iapOrderNo")
	AdminGetIAPOrderLineItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetIAPOrderLineItemsCmd.MarkFlagRequired("namespace")
	AdminGetIAPOrderLineItemsCmd.Flags().String("userId", "", "User id")
	_ = AdminGetIAPOrderLineItemsCmd.MarkFlagRequired("userId")
}
