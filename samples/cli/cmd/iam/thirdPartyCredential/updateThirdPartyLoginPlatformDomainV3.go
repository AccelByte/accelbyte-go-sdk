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

// UpdateThirdPartyLoginPlatformDomainV3Cmd represents the UpdateThirdPartyLoginPlatformDomainV3 command
var UpdateThirdPartyLoginPlatformDomainV3Cmd = &cobra.Command{
	Use:   "updateThirdPartyLoginPlatformDomainV3",
	Short: "Update third party login platform domain V3",
	Long:  `Update third party login platform domain V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelPlatformDomainUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, err := thirdPartyCredentialService.UpdateThirdPartyLoginPlatformDomainV3Short(input, nil)
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
	UpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("body")
	UpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("namespace")
	UpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = UpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("platformId")
}
