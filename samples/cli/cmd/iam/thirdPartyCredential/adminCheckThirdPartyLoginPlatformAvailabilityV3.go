// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCheckThirdPartyLoginPlatformAvailabilityV3Cmd represents the AdminCheckThirdPartyLoginPlatformAvailabilityV3 command
var AdminCheckThirdPartyLoginPlatformAvailabilityV3Cmd = &cobra.Command{
	Use:   "adminCheckThirdPartyLoginPlatformAvailabilityV3",
	Short: "Admin check third party login platform availability V3",
	Long:  `Admin check third party login platform availability V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.AdminCheckThirdPartyLoginPlatformAvailabilityV3Params{
			PlatformID: platformId,
		}
		ok, errOK := thirdPartyCredentialService.AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminCheckThirdPartyLoginPlatformAvailabilityV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminCheckThirdPartyLoginPlatformAvailabilityV3Cmd.MarkFlagRequired("platformId")
}
