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

// RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd represents the RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 command
var RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd = &cobra.Command{
	Use:   "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
	Short: "Retrieve all active third party login platform credential public V3",
	Long:  `Retrieve all active third party login platform credential public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyCredentialService.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd.MarkFlagRequired("namespace")
}
