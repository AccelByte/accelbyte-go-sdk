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

// AdminCreateUserOrderCmd represents the AdminCreateUserOrder command
var AdminCreateUserOrderCmd = &cobra.Command{
	Use:   "adminCreateUserOrder",
	Short: "Admin create user order",
	Long:  `Admin create user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AdminOrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.AdminCreateUserOrderParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := orderService.AdminCreateUserOrderShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateUserOrderCmd.Flags().String("body", "", "Body")
	AdminCreateUserOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateUserOrderCmd.MarkFlagRequired("namespace")
	AdminCreateUserOrderCmd.Flags().String("userId", "", "User id")
	_ = AdminCreateUserOrderCmd.MarkFlagRequired("userId")
}
