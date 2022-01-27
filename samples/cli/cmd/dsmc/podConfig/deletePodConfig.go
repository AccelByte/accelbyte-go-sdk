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

// deletePodConfigCmd represents the deletePodConfig command
var deletePodConfigCmd = &cobra.Command{
	Use:   "deletePodConfig",
	Short: "Delete pod config",
	Long:  `Delete pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.DeletePodConfigParams{
			Name:      name,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := podConfigService.DeletePodConfig(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deletePodConfigCmd)
	deletePodConfigCmd.Flags().StringP("name", "ne", " ", "Name")
	_ = deletePodConfigCmd.MarkFlagRequired("name")
	deletePodConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deletePodConfigCmd.MarkFlagRequired("namespace")
}
