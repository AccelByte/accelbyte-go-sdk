// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentDedicated

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreatePaymentOrderByDedicatedCmd represents the CreatePaymentOrderByDedicated command
var CreatePaymentOrderByDedicatedCmd = &cobra.Command{
	Use:   "createPaymentOrderByDedicated",
	Short: "Create payment order by dedicated",
	Long:  `Create payment order by dedicated`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ExternalPaymentOrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment_dedicated.CreatePaymentOrderByDedicatedParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentDedicatedService.CreatePaymentOrderByDedicated(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	CreatePaymentOrderByDedicatedCmd.Flags().StringP("body", "", "", "Body")
	CreatePaymentOrderByDedicatedCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreatePaymentOrderByDedicatedCmd.MarkFlagRequired("namespace")
}
