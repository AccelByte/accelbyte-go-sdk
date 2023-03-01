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

// GetListCountryAgeRestrictionCmd represents the GetListCountryAgeRestriction command
var GetListCountryAgeRestrictionCmd = &cobra.Command{
	Use:   "getListCountryAgeRestriction",
	Short: "Get list country age restriction",
	Long:  `Get list country age restriction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.GetListCountryAgeRestrictionParams{
			Namespace: namespace,
		}
		ok, errOK := usersService.GetListCountryAgeRestrictionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListCountryAgeRestrictionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetListCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}
