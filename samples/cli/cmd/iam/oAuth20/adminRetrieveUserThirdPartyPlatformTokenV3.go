// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRetrieveUserThirdPartyPlatformTokenV3Cmd represents the AdminRetrieveUserThirdPartyPlatformTokenV3 command
var AdminRetrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
	Use:   "adminRetrieveUserThirdPartyPlatformTokenV3",
	Short: "Admin retrieve user third party platform token V3",
	Long:  `Admin retrieve user third party platform token V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.AdminRetrieveUserThirdPartyPlatformTokenV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
}
