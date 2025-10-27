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

// DeleteNoSQLClusterV2Cmd represents the DeleteNoSQLClusterV2 command
var DeleteNoSQLClusterV2Cmd = &cobra.Command{
	Use:   "deleteNoSQLClusterV2",
	Short: "Delete no SQL cluster V2",
	Long:  `Delete no SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.DeleteNoSQLClusterV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.DeleteNoSQLClusterV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeleteNoSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteNoSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
