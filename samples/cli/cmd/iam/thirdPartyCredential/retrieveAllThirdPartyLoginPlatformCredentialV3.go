// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveAllThirdPartyLoginPlatformCredentialV3Cmd represents the retrieveAllThirdPartyLoginPlatformCredentialV3 command
var retrieveAllThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveAllThirdPartyLoginPlatformCredentialV3Cmd)
	retrieveAllThirdPartyLoginPlatformCredentialV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveAllThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
}
