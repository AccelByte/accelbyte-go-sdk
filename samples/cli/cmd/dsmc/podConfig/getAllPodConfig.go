// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package podConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAllPodConfigCmd represents the GetAllPodConfig command
var GetAllPodConfigCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	GetAllPodConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetAllPodConfigCmd.MarkFlagRequired("namespace")
	GetAllPodConfigCmd.Flags().Int64P("count", "", 1, "Count")
	GetAllPodConfigCmd.Flags().Int64P("offset", "", 0, "Offset")
}
