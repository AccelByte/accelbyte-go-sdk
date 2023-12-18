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

// PreCheckFulfillItemCmd represents the PreCheckFulfillItem command
var PreCheckFulfillItemCmd = &cobra.Command{
	Use:   "preCheckFulfillItem",
	Short: "Pre check fulfill item",
	Long:  `Pre check fulfill item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PreCheckFulfillmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment.PreCheckFulfillItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.PreCheckFulfillItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PreCheckFulfillItemCmd.Flags().String("body", "", "Body")
	PreCheckFulfillItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PreCheckFulfillItemCmd.MarkFlagRequired("namespace")
	PreCheckFulfillItemCmd.Flags().String("userId", "", "User id")
	_ = PreCheckFulfillItemCmd.MarkFlagRequired("userId")
}
