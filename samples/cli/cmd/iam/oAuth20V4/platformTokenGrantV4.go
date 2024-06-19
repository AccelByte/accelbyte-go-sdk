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

// PlatformTokenGrantV4Cmd represents the PlatformTokenGrantV4 command
var PlatformTokenGrantV4Cmd = &cobra.Command{
	Use:   "platformTokenGrantV4",
	Short: "Platform token grant V4",
	Long:  `Platform token grant V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		clientId, _ := cmd.Flags().GetString("clientId")
		createHeadless, _ := cmd.Flags().GetBool("createHeadless")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		macAddress, _ := cmd.Flags().GetString("macAddress")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		serviceLabel, _ := cmd.Flags().GetFloat64("serviceLabel")
		skipSetCookie, _ := cmd.Flags().GetBool("skipSetCookie")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		input := &o_auth2_0_v4.PlatformTokenGrantV4Params{
			AdditionalData:      &additionalData,
			ClientID:            &clientId,
			CreateHeadless:      &createHeadless,
			DeviceID:            &deviceId,
			MacAddress:          &macAddress,
			PlatformToken:       &platformToken,
			ServiceLabel:        &serviceLabel,
			SkipSetCookie:       &skipSetCookie,
			PlatformID:          platformId,
			CodeChallenge:       &codeChallenge,
			CodeChallengeMethod: &codeChallengeMethod,
		}
		ok, errOK := oAuth20V4Service.PlatformTokenGrantV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PlatformTokenGrantV4Cmd.Flags().String("additionalData", "", "Additional data")
	PlatformTokenGrantV4Cmd.Flags().String("clientId", "", "Client id")
	PlatformTokenGrantV4Cmd.Flags().Bool("createHeadless", false, "Create headless")
	PlatformTokenGrantV4Cmd.Flags().String("deviceId", "", "Device id")
	PlatformTokenGrantV4Cmd.Flags().String("macAddress", "", "Mac address")
	PlatformTokenGrantV4Cmd.Flags().String("platformToken", "", "Platform token")
	PlatformTokenGrantV4Cmd.Flags().Float64("serviceLabel", 0, "Service label")
	PlatformTokenGrantV4Cmd.Flags().Bool("skipSetCookie", false, "Skip set cookie")
	PlatformTokenGrantV4Cmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformTokenGrantV4Cmd.MarkFlagRequired("platformId")
	PlatformTokenGrantV4Cmd.Flags().String("codeChallenge", "", "Code challenge")
	PlatformTokenGrantV4Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
}
