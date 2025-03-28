// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicRedeemCodeCmd represents the PublicRedeemCode command
var PublicRedeemCodeCmd = &cobra.Command{
	Use:   "publicRedeemCode",
	Short: "Public redeem code",
	Long:  `Public redeem code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.PublicRedeemCodeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.PublicRedeemCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicRedeemCodeCmd.Flags().String("body", "", "Body")
	_ = PublicRedeemCodeCmd.MarkFlagRequired("body")
	PublicRedeemCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRedeemCodeCmd.MarkFlagRequired("namespace")
	PublicRedeemCodeCmd.Flags().String("userId", "", "User id")
	_ = PublicRedeemCodeCmd.MarkFlagRequired("userId")
}
