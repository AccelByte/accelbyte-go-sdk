// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// updateUserOrderStatusCmd represents the updateUserOrderStatus command
var updateUserOrderStatusCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.UpdateUserOrderStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateUserOrderStatusCmd)
	updateUserOrderStatusCmd.Flags().StringP("body", "b", " ", "Body")
	updateUserOrderStatusCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateUserOrderStatusCmd.MarkFlagRequired("namespace")
	updateUserOrderStatusCmd.Flags().StringP("orderNo", "o", " ", "Order no")
	_ = updateUserOrderStatusCmd.MarkFlagRequired("orderNo")
	updateUserOrderStatusCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = updateUserOrderStatusCmd.MarkFlagRequired("userId")
}
