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

// PublicCreateUserOrderCmd represents the PublicCreateUserOrder command
var PublicCreateUserOrderCmd = &cobra.Command{
	Use:   "publicCreateUserOrder",
	Short: "Public create user order",
	Long:  `Public create user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicCreateUserOrderParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := orderService.PublicCreateUserOrderShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicCreateUserOrderCmd.Flags().String("body", "", "Body")
	_ = PublicCreateUserOrderCmd.MarkFlagRequired("body")
	PublicCreateUserOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateUserOrderCmd.MarkFlagRequired("namespace")
	PublicCreateUserOrderCmd.Flags().String("userId", "", "User id")
	_ = PublicCreateUserOrderCmd.MarkFlagRequired("userId")
}
