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

// DeleteOverrideRegionOverrideCmd represents the DeleteOverrideRegionOverride command
var DeleteOverrideRegionOverrideCmd = &cobra.Command{
	Use:   "deleteOverrideRegionOverride",
	Short: "Delete override region override",
	Long:  `Delete override region override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.DeleteOverrideRegionOverrideParams{
			Deployment: deployment,
			Namespace:  namespace,
			Region:     region,
			Version:    version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.DeleteOverrideRegionOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	DeleteOverrideRegionOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = DeleteOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	DeleteOverrideRegionOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	DeleteOverrideRegionOverrideCmd.Flags().StringP("region", "", "", "Region")
	_ = DeleteOverrideRegionOverrideCmd.MarkFlagRequired("region")
	DeleteOverrideRegionOverrideCmd.Flags().StringP("version", "", "", "Version")
	_ = DeleteOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
