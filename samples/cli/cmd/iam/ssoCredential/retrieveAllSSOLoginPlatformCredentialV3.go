// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveAllSSOLoginPlatformCredentialV3Cmd represents the retrieveAllSSOLoginPlatformCredentialV3 command
var retrieveAllSSOLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveAllSSOLoginPlatformCredentialV3",
	Short: "Retrieve all SSO login platform credential V3",
	Long:  `Retrieve all SSO login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &s_s_o_credential.RetrieveAllSSOLoginPlatformCredentialV3Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ssoCredentialService.RetrieveAllSSOLoginPlatformCredentialV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveAllSSOLoginPlatformCredentialV3Cmd)
	retrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveAllSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	retrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	retrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().StringP("offset", "o", "0", "Offset")
}
