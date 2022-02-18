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

// UpdateDeploymentOverrideCmd represents the UpdateDeploymentOverride command
var UpdateDeploymentOverrideCmd = &cobra.Command{
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
	UpdateDeploymentOverrideCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("body")
	UpdateDeploymentOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("deployment")
	UpdateDeploymentOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("namespace")
	UpdateDeploymentOverrideCmd.Flags().StringP("version", "", "", "Version")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("version")
}
