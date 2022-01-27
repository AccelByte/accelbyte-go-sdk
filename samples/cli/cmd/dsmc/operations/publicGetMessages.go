// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package operations

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetMessagesCmd represents the PublicGetMessages command
var PublicGetMessagesCmd = &cobra.Command{
	Use:   "PublicGetMessages",
	Short: "Public get messages",
	Long:  `Public get messages`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &dsmc.OperationsService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.PublicGetMessagesParams{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := operationsService.PublicGetMessages(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}
