// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

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

// updateCountryAgeRestrictionCmd represents the updateCountryAgeRestriction command
var updateCountryAgeRestrictionCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.UpdateCountryAgeRestriction(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateCountryAgeRestrictionCmd)
	updateCountryAgeRestrictionCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateCountryAgeRestrictionCmd.MarkFlagRequired("body")
	updateCountryAgeRestrictionCmd.Flags().StringP("countryCode", "ce", " ", "Country code")
	_ = updateCountryAgeRestrictionCmd.MarkFlagRequired("countryCode")
	updateCountryAgeRestrictionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}
