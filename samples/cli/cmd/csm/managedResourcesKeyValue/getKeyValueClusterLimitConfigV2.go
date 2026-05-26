// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetKeyValueClusterLimitConfigV2Cmd represents the GetKeyValueClusterLimitConfigV2 command
var GetKeyValueClusterLimitConfigV2Cmd = &cobra.Command{
	Use:   "getKeyValueClusterLimitConfigV2",
	Short: "Get key value cluster limit config V2",
	Long:  `Get key value cluster limit config V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.GetKeyValueClusterLimitConfigV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesKeyValueService.GetKeyValueClusterLimitConfigV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetKeyValueClusterLimitConfigV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyValueClusterLimitConfigV2Cmd.MarkFlagRequired("namespace")
}
