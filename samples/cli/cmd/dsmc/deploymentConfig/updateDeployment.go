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

// updateDeploymentCmd represents the updateDeployment command
var updateDeploymentCmd = &cobra.Command{
	Use:   "updateDeployment",
	Short: "Update deployment",
	Long:  `Update deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsUpdateDeploymentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.UpdateDeploymentParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.UpdateDeployment(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateDeploymentCmd)
	updateDeploymentCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateDeploymentCmd.MarkFlagRequired("body")
	updateDeploymentCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = updateDeploymentCmd.MarkFlagRequired("deployment")
	updateDeploymentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateDeploymentCmd.MarkFlagRequired("namespace")
}
