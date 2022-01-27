// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package order

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// processUserOrderNotificationCmd represents the processUserOrderNotification command
var processUserOrderNotificationCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := orderService.ProcessUserOrderNotification(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(processUserOrderNotificationCmd)
	processUserOrderNotificationCmd.Flags().StringP("body", "by", " ", "Body")
	processUserOrderNotificationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = processUserOrderNotificationCmd.MarkFlagRequired("namespace")
	processUserOrderNotificationCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = processUserOrderNotificationCmd.MarkFlagRequired("orderNo")
	processUserOrderNotificationCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = processUserOrderNotificationCmd.MarkFlagRequired("userId")
}
