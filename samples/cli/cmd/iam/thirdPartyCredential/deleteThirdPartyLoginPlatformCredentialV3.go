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

// DeleteThirdPartyLoginPlatformCredentialV3Cmd represents the DeleteThirdPartyLoginPlatformCredentialV3 command
var DeleteThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "DeleteThirdPartyLoginPlatformCredentialV3",
	Short: "Delete third party login platform credential V3",
	Long:  `Delete third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := thirdPartyCredentialService.DeleteThirdPartyLoginPlatformCredentialV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = DeleteThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	DeleteThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = DeleteThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
