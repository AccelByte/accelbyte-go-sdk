// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// DeleteThirdPartyLoginPlatformDomainV3Cmd represents the DeleteThirdPartyLoginPlatformDomainV3 command
var DeleteThirdPartyLoginPlatformDomainV3Cmd = &cobra.Command{
	Use:   "deleteThirdPartyLoginPlatformDomainV3",
	Short: "Delete third party login platform domain V3",
	Long:  `Delete third party login platform domain V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelPlatformDomainDeleteRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := thirdPartyCredentialService.DeleteThirdPartyLoginPlatformDomainV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("body", "", " ", "Body")
	_ = DeleteThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("body")
	DeleteThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("namespace")
	DeleteThirdPartyLoginPlatformDomainV3Cmd.Flags().StringP("platformId", "", " ", "Platform id")
	_ = DeleteThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("platformId")
}
