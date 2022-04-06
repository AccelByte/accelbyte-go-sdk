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

// AdminGetEventsGameTelemetryV1AdminEventsGetCmd represents the AdminGetEventsGameTelemetryV1AdminEventsGet command
var AdminGetEventsGameTelemetryV1AdminEventsGetCmd = &cobra.Command{
	Use:   "adminGetEventsGameTelemetryV1AdminEventsGet",
	Short: "Admin get events game telemetry v1 admin events get",
	Long:  `Admin get events game telemetry v1 admin events get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &gametelemetry.OperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &operations.AdminGetEventsGameTelemetryV1AdminEventsGetParams{
			Namespace: namespace,
		}
		errInput := operationsService.AdminGetEventsGameTelemetryV1AdminEventsGetShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminGetEventsGameTelemetryV1AdminEventsGetCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetEventsGameTelemetryV1AdminEventsGetCmd.MarkFlagRequired("namespace")
}
