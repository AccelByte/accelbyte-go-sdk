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

// GetListIntegratedAppKeyValueClusterV2Cmd represents the GetListIntegratedAppKeyValueClusterV2 command
var GetListIntegratedAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "getListIntegratedAppKeyValueClusterV2",
	Short: "Get list integrated app key value cluster V2",
	Long:  `Get list integrated app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		input := &managed_resources_key_value.GetListIntegratedAppKeyValueClusterV2Params{
			Namespace:  namespace,
			ResourceID: resourceId,
		}
		ok, errOK := managedResourcesKeyValueService.GetListIntegratedAppKeyValueClusterV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListIntegratedAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListIntegratedAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
	GetListIntegratedAppKeyValueClusterV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = GetListIntegratedAppKeyValueClusterV2Cmd.MarkFlagRequired("resourceId")
}
