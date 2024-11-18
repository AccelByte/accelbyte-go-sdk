// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package resourcesLimits

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/resources_limits"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetResourcesLimitsCmd represents the GetResourcesLimits command
var GetResourcesLimitsCmd = &cobra.Command{
	Use:   "getResourcesLimits",
	Short: "Get resources limits",
	Long:  `Get resources limits`,
	RunE: func(cmd *cobra.Command, args []string) error {
		resourcesLimitsService := &csm.ResourcesLimitsService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &resources_limits.GetResourcesLimitsParams{
			Namespace: namespace,
		}
		ok, errOK := resourcesLimitsService.GetResourcesLimitsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetResourcesLimitsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetResourcesLimitsCmd.MarkFlagRequired("namespace")
}
