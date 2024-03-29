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

// CheckUserAvailabilityCmd represents the CheckUserAvailability command
var CheckUserAvailabilityCmd = &cobra.Command{
	Use:   "checkUserAvailability",
	Short: "Check user availability",
	Long:  `Check user availability`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		field, _ := cmd.Flags().GetString("field")
		query, _ := cmd.Flags().GetString("query")
		input := &users.CheckUserAvailabilityParams{
			Namespace: namespace,
			Field:     field,
			Query:     query,
		}
		errNoContent := usersService.CheckUserAvailabilityShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	CheckUserAvailabilityCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("namespace")
	CheckUserAvailabilityCmd.Flags().String("field", "", "Field")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("field")
	CheckUserAvailabilityCmd.Flags().String("query", "", "Query")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("query")
}
