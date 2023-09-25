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

// AdminGetCountryListV3Cmd represents the AdminGetCountryListV3 command
var AdminGetCountryListV3Cmd = &cobra.Command{
	Use:   "adminGetCountryListV3",
	Short: "Admin get country list V3",
	Long:  `Admin get country list V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		countryService := &iam.CountryService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		filterBlacklist, _ := cmd.Flags().GetBool("filterBlacklist")
		input := &country.AdminGetCountryListV3Params{
			Namespace:       namespace,
			FilterBlacklist: &filterBlacklist,
		}
		ok, errOK := countryService.AdminGetCountryListV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetCountryListV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetCountryListV3Cmd.MarkFlagRequired("namespace")
	AdminGetCountryListV3Cmd.Flags().Bool("filterBlacklist", false, "Filter blacklist")
}
