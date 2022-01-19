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

// createOverrideRegionOverrideCmd represents the createOverrideRegionOverride command
var createOverrideRegionOverrideCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.CreateOverrideRegionOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createOverrideRegionOverrideCmd)
	createOverrideRegionOverrideCmd.Flags().StringP("body", "b", " ", "Body")
	_ = createOverrideRegionOverrideCmd.MarkFlagRequired("body")
	createOverrideRegionOverrideCmd.Flags().StringP("deployment", "d", " ", "Deployment")
	_ = createOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	createOverrideRegionOverrideCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = createOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	createOverrideRegionOverrideCmd.Flags().StringP("region", "r", " ", "Region")
	_ = createOverrideRegionOverrideCmd.MarkFlagRequired("region")
	createOverrideRegionOverrideCmd.Flags().StringP("version", "v", " ", "Version")
	_ = createOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
