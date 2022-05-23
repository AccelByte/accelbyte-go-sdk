// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ssoCredential

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveSSOLoginPlatformCredentialCmd represents the RetrieveSSOLoginPlatformCredential command
var RetrieveSSOLoginPlatformCredentialCmd = &cobra.Command{
	Use:   "retrieveSSOLoginPlatformCredential",
	Short: "Retrieve SSO login platform credential",
	Long:  `Retrieve SSO login platform credential`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &s_s_o_credential.RetrieveSSOLoginPlatformCredentialParams{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, err := ssoCredentialService.RetrieveSSOLoginPlatformCredentialShort(input)
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
	RetrieveSSOLoginPlatformCredentialCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSSOLoginPlatformCredentialCmd.MarkFlagRequired("namespace")
	RetrieveSSOLoginPlatformCredentialCmd.Flags().String("platformId", "", "Platform id")
	_ = RetrieveSSOLoginPlatformCredentialCmd.MarkFlagRequired("platformId")
}
