// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package podConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeletePodConfigCmd represents the DeletePodConfig command
var DeletePodConfigCmd = &cobra.Command{
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
		errNoContent := podConfigService.DeletePodConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePodConfigCmd.Flags().String("name", "", "Name")
	_ = DeletePodConfigCmd.MarkFlagRequired("name")
	DeletePodConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePodConfigCmd.MarkFlagRequired("namespace")
}
