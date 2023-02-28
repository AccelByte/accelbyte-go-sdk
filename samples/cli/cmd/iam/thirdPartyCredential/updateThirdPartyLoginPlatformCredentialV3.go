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

// UpdateThirdPartyLoginPlatformCredentialV3Cmd represents the UpdateThirdPartyLoginPlatformCredentialV3 command
var UpdateThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "updateThirdPartyLoginPlatformCredentialV3",
	Short: "Update third party login platform credential V3",
	Long:  `Update third party login platform credential V3`,
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
		input := &third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := thirdPartyCredentialService.UpdateThirdPartyLoginPlatformCredentialV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("body", "", "Body")
	_ = UpdateThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("body")
	UpdateThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	UpdateThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = UpdateThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
