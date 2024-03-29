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
		ok, errOK := deploymentConfigService.UpdateDeploymentOverrideShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateDeploymentOverrideCmd.Flags().String("body", "", "Body")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("body")
	UpdateDeploymentOverrideCmd.Flags().String("deployment", "", "Deployment")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("deployment")
	UpdateDeploymentOverrideCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("namespace")
	UpdateDeploymentOverrideCmd.Flags().String("version", "", "Version")
	_ = UpdateDeploymentOverrideCmd.MarkFlagRequired("version")
}
