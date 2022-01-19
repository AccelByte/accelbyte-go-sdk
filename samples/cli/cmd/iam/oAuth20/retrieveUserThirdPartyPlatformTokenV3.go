// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveUserThirdPartyPlatformTokenV3Cmd represents the retrieveUserThirdPartyPlatformTokenV3 command
var retrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
	Use:   "retrieveUserThirdPartyPlatformTokenV3",
	Short: "Retrieve user third party platform token V3",
	Long:  `Retrieve user third party platform token V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.RetrieveUserThirdPartyPlatformTokenV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveUserThirdPartyPlatformTokenV3Cmd)
	retrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	retrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = retrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	retrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = retrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
}
