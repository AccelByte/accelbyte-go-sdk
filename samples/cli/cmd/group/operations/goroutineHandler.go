// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GoroutineHandlerCmd represents the GoroutineHandler command
var GoroutineHandlerCmd = &cobra.Command{
	Use:   "goroutineHandler",
	Short: "Goroutine handler",
	Long:  `Goroutine handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &group.OperationsService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.GoroutineHandlerParams{}
		errOK := operationsService.GoroutineHandlerShort(input)
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
