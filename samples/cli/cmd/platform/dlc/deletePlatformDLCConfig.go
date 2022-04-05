// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
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
		input := &d_l_c.DeletePlatformDLCConfigParams{
			Namespace: namespace,
		}
		errInput := dlcService.DeletePlatformDLCConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeletePlatformDLCConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeletePlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
