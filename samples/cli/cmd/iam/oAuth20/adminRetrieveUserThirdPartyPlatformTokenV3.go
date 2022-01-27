// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminRetrieveUserThirdPartyPlatformTokenV3Cmd represents the adminRetrieveUserThirdPartyPlatformTokenV3 command
var adminRetrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminRetrieveUserThirdPartyPlatformTokenV3Cmd)
	adminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	adminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = adminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	adminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
}
