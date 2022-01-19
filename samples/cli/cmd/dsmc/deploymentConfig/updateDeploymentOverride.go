// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// updateDeploymentOverrideCmd represents the updateDeploymentOverride command
var updateDeploymentOverrideCmd = &cobra.Command{
	Use:   "updateDeploymentOverride",
	Short: "Update deployment override",
	Long:  `Update deployment override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsUpdateDeploymentOverrideRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.UpdateDeploymentOverrideParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
			Version:    version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.UpdateDeploymentOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateDeploymentOverrideCmd)
	updateDeploymentOverrideCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateDeploymentOverrideCmd.MarkFlagRequired("body")
	updateDeploymentOverrideCmd.Flags().StringP("deployment", "d", " ", "Deployment")
	_ = updateDeploymentOverrideCmd.MarkFlagRequired("deployment")
	updateDeploymentOverrideCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateDeploymentOverrideCmd.MarkFlagRequired("namespace")
	updateDeploymentOverrideCmd.Flags().StringP("version", "v", " ", "Version")
	_ = updateDeploymentOverrideCmd.MarkFlagRequired("version")
}
