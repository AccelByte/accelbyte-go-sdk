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
	"net/http"
)

// RetrieveUserThirdPartyPlatformTokenV3Cmd represents the RetrieveUserThirdPartyPlatformTokenV3 command
var RetrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
			HTTPClient: httpClient,
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
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
}
