// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpgradeAndAuthenticateForwardV3Cmd represents the UpgradeAndAuthenticateForwardV3 command
var UpgradeAndAuthenticateForwardV3Cmd = &cobra.Command{
	Use:   "upgradeAndAuthenticateForwardV3",
	Short: "Upgrade and authenticate forward V3",
	Long:  `Upgrade and authenticate forward V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		upgradeSuccessToken, _ := cmd.Flags().GetString("upgradeSuccessToken")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.UpgradeAndAuthenticateForwardV3Params{
			ClientID:            clientId,
			UpgradeSuccessToken: upgradeSuccessToken,
			HTTPClient:          httpClient,
		}
		_, errFound := oAuth20ExtensionService.UpgradeAndAuthenticateForwardV3Short(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpgradeAndAuthenticateForwardV3Cmd.Flags().String("clientId", "", "Client id")
	_ = UpgradeAndAuthenticateForwardV3Cmd.MarkFlagRequired("client_id")
	UpgradeAndAuthenticateForwardV3Cmd.Flags().String("upgradeSuccessToken", "", "Upgrade success token")
	_ = UpgradeAndAuthenticateForwardV3Cmd.MarkFlagRequired("upgrade_success_token")
}
