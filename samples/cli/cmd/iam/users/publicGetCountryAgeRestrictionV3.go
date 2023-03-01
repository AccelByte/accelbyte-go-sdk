// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetCountryAgeRestrictionV3Cmd represents the PublicGetCountryAgeRestrictionV3 command
var PublicGetCountryAgeRestrictionV3Cmd = &cobra.Command{
	Use:   "publicGetCountryAgeRestrictionV3",
	Short: "Public get country age restriction V3",
	Long:  `Public get country age restriction V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicGetCountryAgeRestrictionV3Params{
			CountryCode: countryCode,
			Namespace:   namespace,
		}
		ok, errOK := usersService.PublicGetCountryAgeRestrictionV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetCountryAgeRestrictionV3Cmd.Flags().String("countryCode", "", "Country code")
	_ = PublicGetCountryAgeRestrictionV3Cmd.MarkFlagRequired("countryCode")
	PublicGetCountryAgeRestrictionV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetCountryAgeRestrictionV3Cmd.MarkFlagRequired("namespace")
}
