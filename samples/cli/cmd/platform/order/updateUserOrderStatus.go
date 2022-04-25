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

// UpdateUserOrderStatusCmd represents the UpdateUserOrderStatus command
var UpdateUserOrderStatusCmd = &cobra.Command{
	Use:   "updateUserOrderStatus",
	Short: "Update user order status",
	Long:  `Update user order status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.UpdateUserOrderStatusParams{
			Body:      body,
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, err := orderService.UpdateUserOrderStatusShort(input, nil)
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
	UpdateUserOrderStatusCmd.Flags().StringP("body", "", "", "Body")
	UpdateUserOrderStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateUserOrderStatusCmd.MarkFlagRequired("namespace")
	UpdateUserOrderStatusCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = UpdateUserOrderStatusCmd.MarkFlagRequired("orderNo")
	UpdateUserOrderStatusCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateUserOrderStatusCmd.MarkFlagRequired("userId")
}
