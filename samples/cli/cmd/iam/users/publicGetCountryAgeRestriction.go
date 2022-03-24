// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetCountryAgeRestrictionCmd represents the PublicGetCountryAgeRestriction command
var PublicGetCountryAgeRestrictionCmd = &cobra.Command{
	Use:   "publicGetCountryAgeRestriction",
	Short: "Public get country age restriction",
	Long:  `Public get country age restriction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicGetCountryAgeRestrictionParams{
			CountryCode: countryCode,
			Namespace:   namespace,
		}
		ok, err := usersService.PublicGetCountryAgeRestrictionShort(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	PublicGetCountryAgeRestrictionCmd.Flags().StringP("countryCode", "", "", "Country code")
	_ = PublicGetCountryAgeRestrictionCmd.MarkFlagRequired("countryCode")
	PublicGetCountryAgeRestrictionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}
