// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetHealthcheckInfoV1Cmd represents the GetHealthcheckInfoV1 command
var GetHealthcheckInfoV1Cmd = &cobra.Command{
	Use:   "getHealthcheckInfoV1",
	Short: "Get healthcheck info V1",
	Long:  `Get healthcheck info V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &match2.OperationsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.GetHealthcheckInfoV1Params{}
		errInput := operationsService.GetHealthcheckInfoV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
}
