// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateUserPaymentOrderCmd represents the CreateUserPaymentOrder command
var CreateUserPaymentOrderCmd = &cobra.Command{
	Use:   "createUserPaymentOrder",
	Short: "Create user payment order",
	Long:  `Create user payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment.CreateUserPaymentOrderParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := paymentService.CreateUserPaymentOrderShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateUserPaymentOrderCmd.Flags().String("body", "", "Body")
	CreateUserPaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateUserPaymentOrderCmd.MarkFlagRequired("namespace")
	CreateUserPaymentOrderCmd.Flags().String("userId", "", "User id")
	_ = CreateUserPaymentOrderCmd.MarkFlagRequired("userId")
}
