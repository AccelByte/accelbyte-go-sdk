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

// updateOverrideRegionOverrideCmd represents the updateOverrideRegionOverride command
var updateOverrideRegionOverrideCmd = &cobra.Command{
	Use:   "updateOverrideRegionOverride",
	Short: "Update override region override",
	Long:  `Update override region override`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		version, _ := cmd.Flags().GetString("version")
		input := &deployment_config.UpdateOverrideRegionOverrideParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
			Region:     region,
			Version:    version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := deploymentConfigService.UpdateOverrideRegionOverride(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateOverrideRegionOverrideCmd)
	updateOverrideRegionOverrideCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateOverrideRegionOverrideCmd.MarkFlagRequired("body")
	updateOverrideRegionOverrideCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	_ = updateOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	updateOverrideRegionOverrideCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	updateOverrideRegionOverrideCmd.Flags().StringP("region", "rn", " ", "Region")
	_ = updateOverrideRegionOverrideCmd.MarkFlagRequired("region")
	updateOverrideRegionOverrideCmd.Flags().StringP("version", "vn", " ", "Version")
	_ = updateOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
