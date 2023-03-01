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

// CreateOverrideRegionOverrideCmd represents the CreateOverrideRegionOverride command
var CreateOverrideRegionOverrideCmd = &cobra.Command{
	Use:   "createOverrideRegionOverride",
	Short: "Create override region override",
	Long:  `Create override region override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateRegionOverrideRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.CreateOverrideRegionOverrideParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
			Region:     region,
			Version:    version,
		}
		created, errCreated := deploymentConfigService.CreateOverrideRegionOverrideShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateOverrideRegionOverrideCmd.Flags().String("body", "", "Body")
	_ = CreateOverrideRegionOverrideCmd.MarkFlagRequired("body")
	CreateOverrideRegionOverrideCmd.Flags().String("deployment", "", "Deployment")
	_ = CreateOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	CreateOverrideRegionOverrideCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	CreateOverrideRegionOverrideCmd.Flags().String("region", "", "Region")
	_ = CreateOverrideRegionOverrideCmd.MarkFlagRequired("region")
	CreateOverrideRegionOverrideCmd.Flags().String("version", "", "Version")
	_ = CreateOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
