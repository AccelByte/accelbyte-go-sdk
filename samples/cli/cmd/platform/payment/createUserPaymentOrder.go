// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "CreateUserPaymentOrder",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.CreateUserPaymentOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CreateUserPaymentOrderCmd.Flags().StringP("body", "by", " ", "Body")
	CreateUserPaymentOrderCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = CreateUserPaymentOrderCmd.MarkFlagRequired("namespace")
	CreateUserPaymentOrderCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = CreateUserPaymentOrderCmd.MarkFlagRequired("userId")
}
