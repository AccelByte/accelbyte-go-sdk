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

// getAllPodConfigCmd represents the getAllPodConfig command
var getAllPodConfigCmd = &cobra.Command{
	Use:   "getAllPodConfig",
	Short: "Get all pod config",
	Long:  `Get all pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &pod_config.GetAllPodConfigParams{
			Namespace: namespace,
			Count:     &count,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := podConfigService.GetAllPodConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getAllPodConfigCmd)
	getAllPodConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getAllPodConfigCmd.MarkFlagRequired("namespace")
	getAllPodConfigCmd.Flags().Int64P("count", "ct", 1, "Count")
	getAllPodConfigCmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
