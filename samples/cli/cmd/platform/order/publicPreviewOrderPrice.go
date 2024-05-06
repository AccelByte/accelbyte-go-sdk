// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicPreviewOrderPriceCmd represents the PublicPreviewOrderPrice command
var PublicPreviewOrderPriceCmd = &cobra.Command{
	Use:   "publicPreviewOrderPrice",
	Short: "Public preview order price",
	Long:  `Public preview order price`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderDiscountPreviewRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.PublicPreviewOrderPriceParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := orderService.PublicPreviewOrderPriceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicPreviewOrderPriceCmd.Flags().String("body", "", "Body")
	PublicPreviewOrderPriceCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPreviewOrderPriceCmd.MarkFlagRequired("namespace")
	PublicPreviewOrderPriceCmd.Flags().String("userId", "", "User id")
	_ = PublicPreviewOrderPriceCmd.MarkFlagRequired("userId")
}
