// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SimultaneousLoginV3Cmd represents the SimultaneousLoginV3 command
var SimultaneousLoginV3Cmd = &cobra.Command{
	Use:   "simultaneousLoginV3",
	Short: "Simultaneous login V3",
	Long:  `Simultaneous login V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		nativePlatform, _ := cmd.Flags().GetString("nativePlatform")
		nativePlatformTicket, _ := cmd.Flags().GetString("nativePlatformTicket")
		simultaneousPlatform, _ := cmd.Flags().GetString("simultaneousPlatform")
		simultaneousTicket, _ := cmd.Flags().GetString("simultaneousTicket")
		input := &o_auth2_0.SimultaneousLoginV3Params{
			SimultaneousPlatform: &simultaneousPlatform,
			SimultaneousTicket:   &simultaneousTicket,
			NativePlatform:       nativePlatform,
			NativePlatformTicket: nativePlatformTicket,
		}
		ok, errOK := oAuth20Service.SimultaneousLoginV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SimultaneousLoginV3Cmd.Flags().String("simultaneousPlatform", "", "Simultaneous platform")
	SimultaneousLoginV3Cmd.Flags().String("simultaneousTicket", "", "Simultaneous ticket")
	SimultaneousLoginV3Cmd.Flags().String("nativePlatform", "", "Native platform")
	_ = SimultaneousLoginV3Cmd.MarkFlagRequired("nativePlatform")
	SimultaneousLoginV3Cmd.Flags().String("nativePlatformTicket", "", "Native platform ticket")
	_ = SimultaneousLoginV3Cmd.MarkFlagRequired("nativePlatformTicket")
}
