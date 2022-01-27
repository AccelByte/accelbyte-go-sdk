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

// GetAllDeploymentCmd represents the GetAllDeployment command
var GetAllDeploymentCmd = &cobra.Command{
	Use:   "GetAllDeployment",
	Short: "Get all deployment",
	Long:  `Get all deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &deployment_config.GetAllDeploymentParams{
			Namespace: namespace,
			Count:     &count,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.GetAllDeployment(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetAllDeploymentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetAllDeploymentCmd.MarkFlagRequired("namespace")
	GetAllDeploymentCmd.Flags().Int64P("count", "ct", 1, "Count")
	GetAllDeploymentCmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
