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

// RetrieveActiveOIDCClientsPublicV3Cmd represents the RetrieveActiveOIDCClientsPublicV3 command
var RetrieveActiveOIDCClientsPublicV3Cmd = &cobra.Command{
	Use:   "retrieveActiveOIDCClientsPublicV3",
	Short: "Retrieve active OIDC clients public V3",
	Long:  `Retrieve active OIDC clients public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &third_party_credential.RetrieveActiveOIDCClientsPublicV3Params{
			Namespace: namespace,
			ClientID:  clientId,
		}
		ok, errOK := thirdPartyCredentialService.RetrieveActiveOIDCClientsPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveActiveOIDCClientsPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveActiveOIDCClientsPublicV3Cmd.MarkFlagRequired("namespace")
	RetrieveActiveOIDCClientsPublicV3Cmd.Flags().String("clientId", "", "Client id")
	_ = RetrieveActiveOIDCClientsPublicV3Cmd.MarkFlagRequired("clientId")
}
