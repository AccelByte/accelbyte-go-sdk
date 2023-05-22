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

// DeleteDeploymentClientCmd represents the DeleteDeploymentClient command
var DeleteDeploymentClientCmd = &cobra.Command{
	Use:   "deleteDeploymentClient",
	Short: "Delete deployment client",
	Long:  `Delete deployment client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.DeleteDeploymentClientParams{
			Deployment: deployment,
			Namespace:  namespace,
		}
		errNoContent := deploymentConfigService.DeleteDeploymentClientShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteDeploymentClientCmd.Flags().String("deployment", "", "Deployment")
	_ = DeleteDeploymentClientCmd.MarkFlagRequired("deployment")
	DeleteDeploymentClientCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteDeploymentClientCmd.MarkFlagRequired("namespace")
}
