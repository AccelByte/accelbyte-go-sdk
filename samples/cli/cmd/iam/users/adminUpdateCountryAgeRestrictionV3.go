// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateCountryAgeRestrictionV3Cmd represents the AdminUpdateCountryAgeRestrictionV3 command
var AdminUpdateCountryAgeRestrictionV3Cmd = &cobra.Command{
	Use:   "adminUpdateCountryAgeRestrictionV3",
	Short: "Admin update country age restriction V3",
	Long:  `Admin update country age restriction V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCountryAgeRestrictionV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminUpdateCountryAgeRestrictionV3Params{
			Body:        body,
			CountryCode: countryCode,
			Namespace:   namespace,
		}
		ok, err := usersService.AdminUpdateCountryAgeRestrictionV3Short(input, nil)
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
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("body")
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("countryCode", "", "", "Country code")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("countryCode")
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("namespace")
}
