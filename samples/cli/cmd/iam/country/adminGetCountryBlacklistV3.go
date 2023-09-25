// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package country

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/country"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetCountryBlacklistV3Cmd represents the AdminGetCountryBlacklistV3 command
var AdminGetCountryBlacklistV3Cmd = &cobra.Command{
	Use:   "adminGetCountryBlacklistV3",
	Short: "Admin get country blacklist V3",
	Long:  `Admin get country blacklist V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		countryService := &iam.CountryService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &country.AdminGetCountryBlacklistV3Params{
			Namespace: namespace,
		}
		ok, errOK := countryService.AdminGetCountryBlacklistV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetCountryBlacklistV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetCountryBlacklistV3Cmd.MarkFlagRequired("namespace")
}
