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

// DeleteKeyValueClusterV2Cmd represents the DeleteKeyValueClusterV2 command
var DeleteKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "deleteKeyValueClusterV2",
	Short: "Delete key value cluster V2",
	Long:  `Delete key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		input := &managed_resources_key_value.DeleteKeyValueClusterV2Params{
			Namespace:  namespace,
			ResourceID: resourceId,
		}
		ok, errOK := managedResourcesKeyValueService.DeleteKeyValueClusterV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeleteKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
	DeleteKeyValueClusterV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = DeleteKeyValueClusterV2Cmd.MarkFlagRequired("resourceId")
}
