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

// MockPlayStationStreamEventCmd represents the MockPlayStationStreamEvent command
var MockPlayStationStreamEventCmd = &cobra.Command{
	Use:   "mockPlayStationStreamEvent",
	Short: "Mock play station stream event",
	Long:  `Mock play station stream event`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clawbackService := &platform.ClawbackService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.StreamEvent
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &clawback.MockPlayStationStreamEventParams{
			Body:      body,
			Namespace: namespace,
		}
		errOK := clawbackService.MockPlayStationStreamEventShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	MockPlayStationStreamEventCmd.Flags().String("body", "", "Body")
	MockPlayStationStreamEventCmd.Flags().String("namespace", "", "Namespace")
	_ = MockPlayStationStreamEventCmd.MarkFlagRequired("namespace")
}
