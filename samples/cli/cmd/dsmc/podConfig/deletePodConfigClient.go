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

// DeletePodConfigClientCmd represents the DeletePodConfigClient command
var DeletePodConfigClientCmd = &cobra.Command{
	Use:   "deletePodConfigClient",
	Short: "Delete pod config client",
	Long:  `Delete pod config client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.DeletePodConfigClientParams{
			Name:      name,
			Namespace: namespace,
		}
		errNoContent := podConfigService.DeletePodConfigClientShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePodConfigClientCmd.Flags().String("name", "", "Name")
	_ = DeletePodConfigClientCmd.MarkFlagRequired("name")
	DeletePodConfigClientCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePodConfigClientCmd.MarkFlagRequired("namespace")
}
