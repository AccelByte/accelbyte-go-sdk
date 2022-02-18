// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package thirdPartyCredential

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd represents the RetrieveAllThirdPartyLoginPlatformCredentialV3 command
var RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveAllThirdPartyLoginPlatformCredentialV3",
	Short: "Retrieve all third party login platform credential V3",
	Long:  `Retrieve all third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyCredentialService.RetrieveAllThirdPartyLoginPlatformCredentialV3(input)
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
	RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
}
