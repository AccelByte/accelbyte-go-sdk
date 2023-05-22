// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deploymentConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateDeploymentClientCmd represents the CreateDeploymentClient command
var CreateDeploymentClientCmd = &cobra.Command{
	Use:   "createDeploymentClient",
	Short: "Create deployment client",
	Long:  `Create deployment client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateDeploymentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.CreateDeploymentClientParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
		}
		created, errCreated := deploymentConfigService.CreateDeploymentClientShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateDeploymentClientCmd.Flags().String("body", "", "Body")
	_ = CreateDeploymentClientCmd.MarkFlagRequired("body")
	CreateDeploymentClientCmd.Flags().String("deployment", "", "Deployment")
	_ = CreateDeploymentClientCmd.MarkFlagRequired("deployment")
	CreateDeploymentClientCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateDeploymentClientCmd.MarkFlagRequired("namespace")
}
