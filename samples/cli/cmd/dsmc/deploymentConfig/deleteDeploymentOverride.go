// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteDeploymentOverrideCmd represents the deleteDeploymentOverride command
var deleteDeploymentOverrideCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.DeleteDeploymentOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteDeploymentOverrideCmd)
	deleteDeploymentOverrideCmd.Flags().StringP("deployment", "d", " ", "Deployment")
	_ = deleteDeploymentOverrideCmd.MarkFlagRequired("deployment")
	deleteDeploymentOverrideCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteDeploymentOverrideCmd.MarkFlagRequired("namespace")
	deleteDeploymentOverrideCmd.Flags().StringP("version", "v", " ", "Version")
	_ = deleteDeploymentOverrideCmd.MarkFlagRequired("version")
}