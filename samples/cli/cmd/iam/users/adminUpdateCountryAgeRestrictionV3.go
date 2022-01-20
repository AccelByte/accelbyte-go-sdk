// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateCountryAgeRestrictionV3Cmd represents the adminUpdateCountryAgeRestrictionV3 command
var adminUpdateCountryAgeRestrictionV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminUpdateCountryAgeRestrictionV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateCountryAgeRestrictionV3Cmd)
	adminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("body")
	adminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = adminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("countryCode")
	adminUpdateCountryAgeRestrictionV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("namespace")
}