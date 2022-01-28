// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ssoCredential

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteSSOLoginPlatformCredentialV3Cmd represents the DeleteSSOLoginPlatformCredentialV3 command
var DeleteSSOLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "deleteSSOLoginPlatformCredentialV3",
	Short: "Delete SSO login platform credential V3",
	Long:  `Delete SSO login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &s_s_o_credential.DeleteSSOLoginPlatformCredentialV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := ssoCredentialService.DeleteSSOLoginPlatformCredentialV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteSSOLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	DeleteSSOLoginPlatformCredentialV3Cmd.Flags().StringP("platformId", "", " ", "Platform id")
	_ = DeleteSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
