// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package podConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPodConfigCmd represents the getPodConfig command
var getPodConfigCmd = &cobra.Command{
	Use:   "getPodConfig",
	Short: "Get pod config",
	Long:  `Get pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.GetPodConfigParams{
			Name:      name,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := podConfigService.GetPodConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPodConfigCmd)
	getPodConfigCmd.Flags().StringP("name", "ne", " ", "Name")
	_ = getPodConfigCmd.MarkFlagRequired("name")
	getPodConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getPodConfigCmd.MarkFlagRequired("namespace")
}
