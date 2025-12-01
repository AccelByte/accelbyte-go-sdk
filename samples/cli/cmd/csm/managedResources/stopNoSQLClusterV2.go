// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// StopNoSQLClusterV2Cmd represents the StopNoSQLClusterV2 command
var StopNoSQLClusterV2Cmd = &cobra.Command{
	Use:   "stopNoSQLClusterV2",
	Short: "Stop no SQL cluster V2",
	Long:  `Stop no SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.StopNoSQLClusterV2Params{
			Namespace: namespace,
		}
		errNoContent := managedResourcesService.StopNoSQLClusterV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	StopNoSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StopNoSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
