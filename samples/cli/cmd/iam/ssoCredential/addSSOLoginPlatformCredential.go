// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addSSOLoginPlatformCredentialCmd represents the addSSOLoginPlatformCredential command
var addSSOLoginPlatformCredentialCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ssoCredentialService.AddSSOLoginPlatformCredential(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addSSOLoginPlatformCredentialCmd)
	addSSOLoginPlatformCredentialCmd.Flags().StringP("body", "b", " ", "Body")
	_ = addSSOLoginPlatformCredentialCmd.MarkFlagRequired("body")
	addSSOLoginPlatformCredentialCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = addSSOLoginPlatformCredentialCmd.MarkFlagRequired("namespace")
	addSSOLoginPlatformCredentialCmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = addSSOLoginPlatformCredentialCmd.MarkFlagRequired("platformId")
}