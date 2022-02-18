// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ssoCredential

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllSSOLoginPlatformCredentialV3Cmd represents the RetrieveAllSSOLoginPlatformCredentialV3 command
var RetrieveAllSSOLoginPlatformCredentialV3Cmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveAllSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().StringP("offset", "", "0", "Offset")
}
