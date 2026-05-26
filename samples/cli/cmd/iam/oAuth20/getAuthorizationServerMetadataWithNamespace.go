// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAuthorizationServerMetadataWithNamespaceCmd represents the GetAuthorizationServerMetadataWithNamespace command
var GetAuthorizationServerMetadataWithNamespaceCmd = &cobra.Command{
	Use:   "getAuthorizationServerMetadataWithNamespace",
	Short: "Get authorization server metadata with namespace",
	Long:  `Get authorization server metadata with namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &o_auth2_0.GetAuthorizationServerMetadataWithNamespaceParams{
			Namespace: namespace,
		}
		ok, errOK := oAuth20Service.GetAuthorizationServerMetadataWithNamespaceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAuthorizationServerMetadataWithNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAuthorizationServerMetadataWithNamespaceCmd.MarkFlagRequired("namespace")
}
