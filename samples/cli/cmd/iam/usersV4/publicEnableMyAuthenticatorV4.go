// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// PublicEnableMyAuthenticatorV4Cmd represents the PublicEnableMyAuthenticatorV4 command
var PublicEnableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "publicEnableMyAuthenticatorV4",
	Short: "Public enable my authenticator V4",
	Long:  `Public enable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users_v4.PublicEnableMyAuthenticatorV4Params{
			Code:       &code,
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		errInput := usersV4Service.PublicEnableMyAuthenticatorV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicEnableMyAuthenticatorV4Cmd.Flags().StringP("code", "", "", "Code")
	PublicEnableMyAuthenticatorV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicEnableMyAuthenticatorV4Cmd.MarkFlagRequired("namespace")
}
