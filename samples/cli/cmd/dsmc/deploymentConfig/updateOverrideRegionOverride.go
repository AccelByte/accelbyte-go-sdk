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

// UpdateOverrideRegionOverrideCmd represents the UpdateOverrideRegionOverride command
var UpdateOverrideRegionOverrideCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	UpdateOverrideRegionOverrideCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateOverrideRegionOverrideCmd.MarkFlagRequired("body")
	UpdateOverrideRegionOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = UpdateOverrideRegionOverrideCmd.MarkFlagRequired("deployment")
	UpdateOverrideRegionOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateOverrideRegionOverrideCmd.MarkFlagRequired("namespace")
	UpdateOverrideRegionOverrideCmd.Flags().StringP("region", "", "", "Region")
	_ = UpdateOverrideRegionOverrideCmd.MarkFlagRequired("region")
	UpdateOverrideRegionOverrideCmd.Flags().StringP("version", "", "", "Version")
	_ = UpdateOverrideRegionOverrideCmd.MarkFlagRequired("version")
}
