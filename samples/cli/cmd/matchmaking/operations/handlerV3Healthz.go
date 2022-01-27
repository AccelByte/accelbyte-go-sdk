// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HandlerV3HealthzCmd represents the HandlerV3Healthz command
var HandlerV3HealthzCmd = &cobra.Command{
	Use:   "HandlerV3Healthz",
	Short: "Handler V3 healthz",
	Long:  `Handler V3 healthz`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &matchmaking.OperationsService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.HandlerV3HealthzParams{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := operationsService.HandlerV3Healthz(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}
