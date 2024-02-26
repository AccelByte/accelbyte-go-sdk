// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SimultaneousLoginV4Cmd represents the SimultaneousLoginV4 command
var SimultaneousLoginV4Cmd = &cobra.Command{
	Use:   "simultaneousLoginV4",
	Short: "Simultaneous login V4",
	Long:  `Simultaneous login V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		nativePlatform, _ := cmd.Flags().GetString("nativePlatform")
		nativePlatformTicket, _ := cmd.Flags().GetString("nativePlatformTicket")
		simultaneousPlatform, _ := cmd.Flags().GetString("simultaneousPlatform")
		simultaneousTicket, _ := cmd.Flags().GetString("simultaneousTicket")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		input := &o_auth2_0_v4.SimultaneousLoginV4Params{
			SimultaneousPlatform: &simultaneousPlatform,
			SimultaneousTicket:   &simultaneousTicket,
			NativePlatform:       nativePlatform,
			NativePlatformTicket: nativePlatformTicket,
			CodeChallenge:        &codeChallenge,
			CodeChallengeMethod:  &codeChallengeMethod,
		}
		ok, errOK := oAuth20V4Service.SimultaneousLoginV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SimultaneousLoginV4Cmd.Flags().String("simultaneousPlatform", "", "Simultaneous platform")
	SimultaneousLoginV4Cmd.Flags().String("simultaneousTicket", "", "Simultaneous ticket")
	SimultaneousLoginV4Cmd.Flags().String("nativePlatform", "", "Native platform")
	_ = SimultaneousLoginV4Cmd.MarkFlagRequired("nativePlatform")
	SimultaneousLoginV4Cmd.Flags().String("nativePlatformTicket", "", "Native platform ticket")
	_ = SimultaneousLoginV4Cmd.MarkFlagRequired("nativePlatformTicket")
	SimultaneousLoginV4Cmd.Flags().String("codeChallenge", "", "Code challenge")
	SimultaneousLoginV4Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
}
