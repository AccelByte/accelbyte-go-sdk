// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeletePlatformDLCConfigCmd represents the DeletePlatformDLCConfig command
var DeletePlatformDLCConfigCmd = &cobra.Command{
	Use:   "deletePlatformDLCConfig",
	Short: "Delete platform DLC config",
	Long:  `Delete platform DLC config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.DeletePlatformDLCConfigParams{
			Namespace: namespace,
		}
		errNoContent := dlcService.DeletePlatformDLCConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePlatformDLCConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
