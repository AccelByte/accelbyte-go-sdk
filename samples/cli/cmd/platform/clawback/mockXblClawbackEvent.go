// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clawback

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/clawback"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// MockXblClawbackEventCmd represents the MockXblClawbackEvent command
var MockXblClawbackEventCmd = &cobra.Command{
	Use:   "mockXblClawbackEvent",
	Short: "Mock xbl clawback event",
	Long:  `Mock xbl clawback event`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clawbackService := &platform.ClawbackService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblClawbackEvent
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &clawback.MockXblClawbackEventParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := clawbackService.MockXblClawbackEventShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	MockXblClawbackEventCmd.Flags().String("body", "", "Body")
	MockXblClawbackEventCmd.Flags().String("namespace", "", "Namespace")
	_ = MockXblClawbackEventCmd.MarkFlagRequired("namespace")
}
