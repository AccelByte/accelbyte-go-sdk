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

// GetAllDeploymentClientCmd represents the GetAllDeploymentClient command
var GetAllDeploymentClientCmd = &cobra.Command{
	Use:   "getAllDeploymentClient",
	Short: "Get all deployment client",
	Long:  `Get all deployment client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		name, _ := cmd.Flags().GetString("name")
		input := &deployment_config.GetAllDeploymentClientParams{
			Namespace: namespace,
			Name:      &name,
			Count:     count,
			Offset:    offset,
		}
		ok, errOK := deploymentConfigService.GetAllDeploymentClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllDeploymentClientCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllDeploymentClientCmd.MarkFlagRequired("namespace")
	GetAllDeploymentClientCmd.Flags().String("name", "", "Name")
	GetAllDeploymentClientCmd.Flags().Int64("count", 1, "Count")
	_ = GetAllDeploymentClientCmd.MarkFlagRequired("count")
	GetAllDeploymentClientCmd.Flags().Int64("offset", 0, "Offset")
	_ = GetAllDeploymentClientCmd.MarkFlagRequired("offset")
}
