// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
	Use:   "retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
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
		ok, errOK := thirdPartyCredentialService.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Cmd.MarkFlagRequired("namespace")
}
