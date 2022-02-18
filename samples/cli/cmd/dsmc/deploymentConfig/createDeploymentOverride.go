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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateDeploymentOverrideCmd represents the CreateDeploymentOverride command
var CreateDeploymentOverrideCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	CreateDeploymentOverrideCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateDeploymentOverrideCmd.MarkFlagRequired("body")
	CreateDeploymentOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = CreateDeploymentOverrideCmd.MarkFlagRequired("deployment")
	CreateDeploymentOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateDeploymentOverrideCmd.MarkFlagRequired("namespace")
	CreateDeploymentOverrideCmd.Flags().StringP("version", "", "", "Version")
	_ = CreateDeploymentOverrideCmd.MarkFlagRequired("version")
}
