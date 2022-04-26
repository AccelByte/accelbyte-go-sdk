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

// ProcessUserOrderNotificationCmd represents the ProcessUserOrderNotification command
var ProcessUserOrderNotificationCmd = &cobra.Command{
	Use:   "processUserOrderNotification",
	Short: "Process user order notification",
	Long:  `Process user order notification`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TradeNotification
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.ProcessUserOrderNotificationParams{
			Body:      body,
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		errInput := orderService.ProcessUserOrderNotificationShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ProcessUserOrderNotificationCmd.Flags().StringP("body", "", "", "Body")
	ProcessUserOrderNotificationCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ProcessUserOrderNotificationCmd.MarkFlagRequired("namespace")
	ProcessUserOrderNotificationCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = ProcessUserOrderNotificationCmd.MarkFlagRequired("orderNo")
	ProcessUserOrderNotificationCmd.Flags().StringP("userId", "", "", "User id")
	_ = ProcessUserOrderNotificationCmd.MarkFlagRequired("userId")
}
