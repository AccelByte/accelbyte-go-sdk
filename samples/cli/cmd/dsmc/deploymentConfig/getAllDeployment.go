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

// GetAllDeploymentCmd represents the GetAllDeployment command
var GetAllDeploymentCmd = &cobra.Command{
	Use:   "getAllDeployment",
	Short: "Get all deployment",
	Long:  `Get all deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &deployment_config.GetAllDeploymentParams{
			Namespace: namespace,
			Count:     &count,
			Name:      &name,
			Offset:    &offset,
		}
		ok, err := deploymentConfigService.GetAllDeploymentShort(input, nil)
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
	GetAllDeploymentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetAllDeploymentCmd.MarkFlagRequired("namespace")
	GetAllDeploymentCmd.Flags().Int64P("count", "", 1, "Count")
	GetAllDeploymentCmd.Flags().StringP("name", "", "", "Name")
	GetAllDeploymentCmd.Flags().Int64P("offset", "", 0, "Offset")
}
