// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetryOperations

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gametelemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd represents the ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost command
var ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd = &cobra.Command{
	Use:   "protectedSaveEventsGameTelemetryV1ProtectedEventsPost",
	Short: "Protected save events game telemetry v1 protected events post",
	Long:  `Protected save events game telemetry v1 protected events post`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gametelemetryOperationsService := &gametelemetry.GametelemetryOperationsService{
			Client:          factory.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*gametelemetryclientmodels.TelemetryBody
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		cookie, _ := cmd.Flags().GetString("cookie")
		input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
			Body:   body,
			Cookie: &cookie,
		}
		errNoContent := gametelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd.Flags().String("body", "", "Body")
	_ = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd.MarkFlagRequired("body")
	ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostCmd.Flags().String("cookie", "", "Cookie")
}
