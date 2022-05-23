// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ssoCredential

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddSSOLoginPlatformCredentialCmd represents the AddSSOLoginPlatformCredential command
var AddSSOLoginPlatformCredentialCmd = &cobra.Command{
	Use:   "addSSOLoginPlatformCredential",
	Short: "Add SSO login platform credential",
	Long:  `Add SSO login platform credential`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelSSOPlatformCredentialRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &s_s_o_credential.AddSSOLoginPlatformCredentialParams{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, err := ssoCredentialService.AddSSOLoginPlatformCredentialShort(input)
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
	AddSSOLoginPlatformCredentialCmd.Flags().String("body", "", "Body")
	_ = AddSSOLoginPlatformCredentialCmd.MarkFlagRequired("body")
	AddSSOLoginPlatformCredentialCmd.Flags().String("namespace", "", "Namespace")
	_ = AddSSOLoginPlatformCredentialCmd.MarkFlagRequired("namespace")
	AddSSOLoginPlatformCredentialCmd.Flags().String("platformId", "", "Platform id")
	_ = AddSSOLoginPlatformCredentialCmd.MarkFlagRequired("platformId")
}
