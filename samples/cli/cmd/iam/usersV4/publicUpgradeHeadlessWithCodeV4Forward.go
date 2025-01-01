// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpgradeHeadlessWithCodeV4ForwardCmd represents the PublicUpgradeHeadlessWithCodeV4Forward command
var PublicUpgradeHeadlessWithCodeV4ForwardCmd = &cobra.Command{
	Use:   "publicUpgradeHeadlessWithCodeV4Forward",
	Short: "Public upgrade headless with code V4 forward",
	Long:  `Public upgrade headless with code V4 forward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users_v4.PublicUpgradeHeadlessWithCodeV4ForwardParams{
			Body:       body,
			HTTPClient: httpClient,
		}
		_, errFound := usersV4Service.PublicUpgradeHeadlessWithCodeV4ForwardShort(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpgradeHeadlessWithCodeV4ForwardCmd.Flags().String("body", "", "Body")
	_ = PublicUpgradeHeadlessWithCodeV4ForwardCmd.MarkFlagRequired("body")
}
