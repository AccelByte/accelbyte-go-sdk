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

// CreateRootRegionOverrideCmd represents the CreateRootRegionOverride command
var CreateRootRegionOverrideCmd = &cobra.Command{
	Use:   "createRootRegionOverride",
	Short: "Create root region override",
	Long:  `Create root region override`,
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
		input := &deployment_config.CreateRootRegionOverrideParams{
			Body:       body,
			Deployment: deployment,
			Namespace:  namespace,
			Region:     region,
		}
		ok, err := deploymentConfigService.CreateRootRegionOverrideShort(input)
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
	CreateRootRegionOverrideCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateRootRegionOverrideCmd.MarkFlagRequired("body")
	CreateRootRegionOverrideCmd.Flags().StringP("deployment", "", "", "Deployment")
	_ = CreateRootRegionOverrideCmd.MarkFlagRequired("deployment")
	CreateRootRegionOverrideCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateRootRegionOverrideCmd.MarkFlagRequired("namespace")
	CreateRootRegionOverrideCmd.Flags().StringP("region", "", "", "Region")
	_ = CreateRootRegionOverrideCmd.MarkFlagRequired("region")
}
