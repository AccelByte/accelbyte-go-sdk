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

// VersionCheckHandlerCmd represents the VersionCheckHandler command
var VersionCheckHandlerCmd = &cobra.Command{
	Use:   "versionCheckHandler",
	Short: "Version check handler",
	Long:  `Version check handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &matchmaking.OperationsService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.VersionCheckHandlerParams{}
		errInput := operationsService.VersionCheckHandlerShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
}
