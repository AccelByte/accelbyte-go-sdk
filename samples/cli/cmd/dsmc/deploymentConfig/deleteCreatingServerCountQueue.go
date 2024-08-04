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

// DeleteCreatingServerCountQueueCmd represents the DeleteCreatingServerCountQueue command
var DeleteCreatingServerCountQueueCmd = &cobra.Command{
	Use:   "deleteCreatingServerCountQueue",
	Short: "Delete creating server count queue",
	Long:  `Delete creating server count queue`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.DeleteCreatingServerCountQueueParams{
			Deployment: deployment,
			Namespace:  namespace,
			Version:    version,
		}
		errOK := deploymentConfigService.DeleteCreatingServerCountQueueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteCreatingServerCountQueueCmd.Flags().String("deployment", "", "Deployment")
	_ = DeleteCreatingServerCountQueueCmd.MarkFlagRequired("deployment")
	DeleteCreatingServerCountQueueCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteCreatingServerCountQueueCmd.MarkFlagRequired("namespace")
	DeleteCreatingServerCountQueueCmd.Flags().String("version", "", "Version")
	_ = DeleteCreatingServerCountQueueCmd.MarkFlagRequired("version")
}
