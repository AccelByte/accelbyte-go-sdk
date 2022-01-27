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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addThirdPartyLoginPlatformCredentialV3Cmd represents the addThirdPartyLoginPlatformCredentialV3 command
var addThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyCredentialService.AddThirdPartyLoginPlatformCredentialV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addThirdPartyLoginPlatformCredentialV3Cmd)
	addThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = addThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("body")
	addThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = addThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	addThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = addThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
