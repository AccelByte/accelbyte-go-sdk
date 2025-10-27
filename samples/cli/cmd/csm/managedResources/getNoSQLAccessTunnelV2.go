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

// GetNoSQLAccessTunnelV2Cmd represents the GetNoSQLAccessTunnelV2 command
var GetNoSQLAccessTunnelV2Cmd = &cobra.Command{
	Use:   "getNoSQLAccessTunnelV2",
	Short: "Get no SQL access tunnel V2",
	Long:  `Get no SQL access tunnel V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.GetNoSQLAccessTunnelV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.GetNoSQLAccessTunnelV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetNoSQLAccessTunnelV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNoSQLAccessTunnelV2Cmd.MarkFlagRequired("namespace")
}
