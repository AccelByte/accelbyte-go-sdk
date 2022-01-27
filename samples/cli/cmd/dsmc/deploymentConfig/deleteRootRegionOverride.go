// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "DeleteRootRegionOverride",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.DeleteRootRegionOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	DeleteRootRegionOverrideCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("deployment")
	DeleteRootRegionOverrideCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("namespace")
	DeleteRootRegionOverrideCmd.Flags().StringP("region", "rn", " ", "Region")
	_ = DeleteRootRegionOverrideCmd.MarkFlagRequired("region")
}
