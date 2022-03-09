// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package thirdPartyCredential

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveThirdPartyLoginPlatformCredentialV3Cmd represents the RetrieveThirdPartyLoginPlatformCredentialV3 command
var RetrieveThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveThirdPartyLoginPlatformCredentialV3",
	Short: "Retrieve third party login platform credential V3",
	Long:  `Retrieve third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyCredentialService.RetrieveThirdPartyLoginPlatformCredentialV3(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	RetrieveThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	RetrieveThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = RetrieveThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
