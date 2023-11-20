// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package telemetry

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/telemetry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetNamespacesGameTelemetryV1AdminNamespacesGetCmd represents the GetNamespacesGameTelemetryV1AdminNamespacesGet command
var GetNamespacesGameTelemetryV1AdminNamespacesGetCmd = &cobra.Command{
	Use:   "getNamespacesGameTelemetryV1AdminNamespacesGet",
	Short: "Get namespaces game telemetry v1 admin namespaces get",
	Long:  `Get namespaces game telemetry v1 admin namespaces get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		telemetryService := &gametelemetry.TelemetryService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &telemetry.GetNamespacesGameTelemetryV1AdminNamespacesGetParams{}
		errOK := telemetryService.GetNamespacesGameTelemetryV1AdminNamespacesGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
