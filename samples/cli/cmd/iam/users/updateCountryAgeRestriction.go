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

// UpdateCountryAgeRestrictionCmd represents the UpdateCountryAgeRestriction command
var UpdateCountryAgeRestrictionCmd = &cobra.Command{
	Use:   "updateCountryAgeRestriction",
	Short: "Update country age restriction",
	Long:  `Update country age restriction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCountryAgeRestrictionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.UpdateCountryAgeRestrictionParams{
			Body:        body,
			CountryCode: countryCode,
			Namespace:   namespace,
		}
		ok, err := usersService.UpdateCountryAgeRestrictionShort(input)
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
	UpdateCountryAgeRestrictionCmd.Flags().String("body", "", "Body")
	_ = UpdateCountryAgeRestrictionCmd.MarkFlagRequired("body")
	UpdateCountryAgeRestrictionCmd.Flags().String("countryCode", "", "Country code")
	_ = UpdateCountryAgeRestrictionCmd.MarkFlagRequired("countryCode")
	UpdateCountryAgeRestrictionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}
