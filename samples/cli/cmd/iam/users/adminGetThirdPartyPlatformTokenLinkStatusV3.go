// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd represents the AdminGetThirdPartyPlatformTokenLinkStatusV3 command
var AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd = &cobra.Command{
	Use:   "adminGetThirdPartyPlatformTokenLinkStatusV3",
	Short: "Admin get third party platform token link status V3",
	Long:  `Admin get third party platform token link status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformToken, _ := cmd.Flags().GetString("platformToken")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetThirdPartyPlatformTokenLinkStatusV3Params{
			PlatformToken: platformToken,
			Namespace:     namespace,
			PlatformID:    platformId,
			UserID:        userId,
		}
		ok, errOK := usersService.AdminGetThirdPartyPlatformTokenLinkStatusV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("platformToken", "", "Platform token")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("platformToken")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("namespace")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("platformId")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("userId")
}
