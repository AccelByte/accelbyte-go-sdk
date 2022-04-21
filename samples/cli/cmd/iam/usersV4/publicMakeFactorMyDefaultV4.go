// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicMakeFactorMyDefaultV4Cmd represents the PublicMakeFactorMyDefaultV4 command
var PublicMakeFactorMyDefaultV4Cmd = &cobra.Command{
	Use:   "publicMakeFactorMyDefaultV4",
	Short: "Public make factor my default V4",
	Long:  `Public make factor my default V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		factor, _ := cmd.Flags().GetString("factor")
		namespace, _ := cmd.Flags().GetString("namespace")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users_v4.PublicMakeFactorMyDefaultV4Params{
			Factor:     factor,
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		errInput := usersV4Service.PublicMakeFactorMyDefaultV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicMakeFactorMyDefaultV4Cmd.Flags().StringP("factor", "", "", "Factor")
	_ = PublicMakeFactorMyDefaultV4Cmd.MarkFlagRequired("factor")
	PublicMakeFactorMyDefaultV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicMakeFactorMyDefaultV4Cmd.MarkFlagRequired("namespace")
}
