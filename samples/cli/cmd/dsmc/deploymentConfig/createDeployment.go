// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package deploymentConfig

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createDeploymentCmd represents the createDeployment command
var createDeploymentCmd = &cobra.Command{
	Use:   "createDeployment",
	Short: "Create deployment",
	Long:  `Create deployment`,
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
		input := &deployment_config.CreateDeploymentParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.CreateDeployment(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createDeploymentCmd)
	createDeploymentCmd.Flags().StringP("body", "by", " ", "Body")
	_ = createDeploymentCmd.MarkFlagRequired("body")
	createDeploymentCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = createDeploymentCmd.MarkFlagRequired("deployment")
	createDeploymentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createDeploymentCmd.MarkFlagRequired("namespace")
}
