// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// UpdateSSOPlatformCredentialCmd represents the UpdateSSOPlatformCredential command
var UpdateSSOPlatformCredentialCmd = &cobra.Command{
	Use:   "updateSSOPlatformCredential",
	Short: "Update SSO platform credential",
	Long:  `Update SSO platform credential`,
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
		input := &s_s_o_credential.UpdateSSOPlatformCredentialParams{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ssoCredentialService.UpdateSSOPlatformCredential(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	UpdateSSOPlatformCredentialCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateSSOPlatformCredentialCmd.MarkFlagRequired("body")
	UpdateSSOPlatformCredentialCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateSSOPlatformCredentialCmd.MarkFlagRequired("namespace")
	UpdateSSOPlatformCredentialCmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = UpdateSSOPlatformCredentialCmd.MarkFlagRequired("platformId")
}
