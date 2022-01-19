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

// getDeploymentCmd represents the getDeployment command
var getDeploymentCmd = &cobra.Command{
	Use:   "getDeployment",
	Short: "Get deployment",
	Long:  `Get deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.GetDeploymentParams{
			Deployment: deployment,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.GetDeployment(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getDeploymentCmd)
	getDeploymentCmd.Flags().StringP("deployment", "d", " ", "Deployment")
	_ = getDeploymentCmd.MarkFlagRequired("deployment")
	getDeploymentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getDeploymentCmd.MarkFlagRequired("namespace")
}
