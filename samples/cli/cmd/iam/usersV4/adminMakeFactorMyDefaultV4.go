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

// AdminMakeFactorMyDefaultV4Cmd represents the AdminMakeFactorMyDefaultV4 command
var AdminMakeFactorMyDefaultV4Cmd = &cobra.Command{
	Use:   "adminMakeFactorMyDefaultV4",
	Short: "Admin make factor my default V4",
	Long:  `Admin make factor my default V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		factor, _ := cmd.Flags().GetString("factor")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users_v4.AdminMakeFactorMyDefaultV4Params{
			Factor:     factor,
			HTTPClient: httpClient,
		}
		errInput := usersV4Service.AdminMakeFactorMyDefaultV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminMakeFactorMyDefaultV4Cmd.Flags().String("factor", "", "Factor")
	_ = AdminMakeFactorMyDefaultV4Cmd.MarkFlagRequired("factor")
}
