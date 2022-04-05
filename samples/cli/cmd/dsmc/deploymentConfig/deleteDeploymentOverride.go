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

// DeleteDeploymentOverrideCmd represents the DeleteDeploymentOverride command
var DeleteDeploymentOverrideCmd = &cobra.Command{
	Use:   "deleteDeploymentOverride",
	Short: "Delete deployment override",
	Long:  `Delete deployment override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.DeleteDeploymentOverrideParams{
			Deployment: deployment,
			Namespace:  namespace,
			Version:    version,
		}
		ok, err := deploymentConfigService.DeleteDeploymentOverrideShort(input)
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
	DeleteDeploymentOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = DeleteDeploymentOverrideCmd.MarkFlagRequired("deployment")
	DeleteDeploymentOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteDeploymentOverrideCmd.MarkFlagRequired("namespace")
	DeleteDeploymentOverrideCmd.Flags().StringP("version", "", "", "Version")
	_ = DeleteDeploymentOverrideCmd.MarkFlagRequired("version")
}
