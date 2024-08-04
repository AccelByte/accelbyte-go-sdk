// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeItemsCmd represents the RevokeItems command
var RevokeItemsCmd = &cobra.Command{
	Use:   "revokeItems",
	Short: "Revoke items",
	Long:  `Revoke items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.RevokeItemsParams{
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.RevokeItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RevokeItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeItemsCmd.MarkFlagRequired("namespace")
	RevokeItemsCmd.Flags().String("transactionId", "", "Transaction id")
	_ = RevokeItemsCmd.MarkFlagRequired("transactionId")
	RevokeItemsCmd.Flags().String("userId", "", "User id")
	_ = RevokeItemsCmd.MarkFlagRequired("userId")
}
