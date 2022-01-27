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

// createDeploymentOverrideCmd represents the createDeploymentOverride command
var createDeploymentOverrideCmd = &cobra.Command{
	Use:   "createDeploymentOverride",
	Short: "Create deployment override",
	Long:  `Create deployment override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateDeploymentOverrideRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.CreateDeploymentOverrideParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
			Version:    version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.CreateDeploymentOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createDeploymentOverrideCmd)
	createDeploymentOverrideCmd.Flags().StringP("body", "by", " ", "Body")
	_ = createDeploymentOverrideCmd.MarkFlagRequired("body")
	createDeploymentOverrideCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = createDeploymentOverrideCmd.MarkFlagRequired("deployment")
	createDeploymentOverrideCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createDeploymentOverrideCmd.MarkFlagRequired("namespace")
	createDeploymentOverrideCmd.Flags().StringP("version", "vn", " ", "Version")
	_ = createDeploymentOverrideCmd.MarkFlagRequired("version")
}
