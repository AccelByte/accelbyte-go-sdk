// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// protectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd represents the protectedSaveEventsGameTelemetryV1ProtectedEventsPost command
var protectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd = &cobra.Command{
	Use:   "protectedSaveEventsGameTelemetryV1ProtectedEventsPost",
	Short: "Protected save events game telemetry v1 protected events post",
	Long:  `Protected save events game telemetry v1 protected events post`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &gametelemetry.OperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*gametelemetryclientmodels.TelemetryBody
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
			Body: body,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := operationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(protectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd)
	protectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd.Flags().StringP("body", "b", " ", "Body")
	_ = protectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd.MarkFlagRequired("body")
}