// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmcOperations

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/dsmc_operations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetMessagesCmd represents the PublicGetMessages command
var PublicGetMessagesCmd = &cobra.Command{
	Use:   "publicGetMessages",
	Short: "Public get messages",
	Long:  `Public get messages`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dsmcOperationsService := &dsmc.DsmcOperationsService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &dsmc_operations.PublicGetMessagesParams{}
		ok, err := dsmcOperationsService.PublicGetMessagesShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
}
