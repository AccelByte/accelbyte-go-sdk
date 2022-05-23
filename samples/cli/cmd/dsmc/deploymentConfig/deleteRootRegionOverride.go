// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deploymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteRootRegionOverrideCmd represents the DeleteRootRegionOverride command
var DeleteRootRegionOverrideCmd = &cobra.Command{
	Use:   "deleteRootRegionOverride",
	Short: "Delete root region override",
	Long:  `Delete root region override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &deployment_config.DeleteRootRegionOverrideParams{
			Deployment: deployment,
			Namespace:  namespace,
			Region:     region,
		}
		ok, err := deploymentConfigService.DeleteRootRegionOverrideShort(input)
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
	DeleteRootRegionOverrideCmd.Flags().String("deployment", "", "Deployment")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("deployment")
	DeleteRootRegionOverrideCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("namespace")
	DeleteRootRegionOverrideCmd.Flags().String("region", "", "Region")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("region")
}
