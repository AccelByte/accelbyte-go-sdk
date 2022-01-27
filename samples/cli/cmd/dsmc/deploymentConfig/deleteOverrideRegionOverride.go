// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package deploymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteOverrideRegionOverrideCmd represents the deleteOverrideRegionOverride command
var deleteOverrideRegionOverrideCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(deleteOverrideRegionOverrideCmd)
	deleteOverrideRegionOverrideCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = deleteOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	deleteOverrideRegionOverrideCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	deleteOverrideRegionOverrideCmd.Flags().StringP("region", "rn", " ", "Region")
	_ = deleteOverrideRegionOverrideCmd.MarkFlagRequired("region")
	deleteOverrideRegionOverrideCmd.Flags().StringP("version", "vn", " ", "Version")
	_ = deleteOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
