// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddThirdPartyLoginPlatformCredentialV3Cmd represents the AddThirdPartyLoginPlatformCredentialV3 command
var AddThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "addThirdPartyLoginPlatformCredentialV3",
	Short: "Add third party login platform credential V3",
	Long:  `Add third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelThirdPartyLoginPlatformCredentialRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		created, errCreated := thirdPartyCredentialService.AddThirdPartyLoginPlatformCredentialV3Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AddThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("body", "", "Body")
	_ = AddThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("body")
	AddThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AddThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	AddThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AddThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
