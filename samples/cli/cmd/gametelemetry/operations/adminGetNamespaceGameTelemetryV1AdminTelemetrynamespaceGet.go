// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetCmd represents the AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet command
var AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetCmd = &cobra.Command{
	Use:   "adminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet",
	Short: "Admin get namespace game telemetry v1 admin telemetrynamespace get",
	Long:  `Admin get namespace game telemetry v1 admin telemetrynamespace get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &gametelemetry.OperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetParams{}
		errInput := operationsService.AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
}
