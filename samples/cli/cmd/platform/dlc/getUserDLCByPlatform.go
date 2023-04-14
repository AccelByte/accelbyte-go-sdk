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

// GetUserDLCByPlatformCmd represents the GetUserDLCByPlatform command
var GetUserDLCByPlatformCmd = &cobra.Command{
	Use:   "getUserDLCByPlatform",
	Short: "Get user DLC by platform",
	Long:  `Get user DLC by platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		type_, _ := cmd.Flags().GetString("type")
		input := &dlc.GetUserDLCByPlatformParams{
			Namespace: namespace,
			UserID:    userId,
			Type:      type_,
		}
		ok, errOK := dlcService.GetUserDLCByPlatformShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserDLCByPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserDLCByPlatformCmd.MarkFlagRequired("namespace")
	GetUserDLCByPlatformCmd.Flags().String("userId", "", "User id")
	_ = GetUserDLCByPlatformCmd.MarkFlagRequired("userId")
	GetUserDLCByPlatformCmd.Flags().String("type", "", "Type")
	_ = GetUserDLCByPlatformCmd.MarkFlagRequired("type")
}
