// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// checkUserAvailabilityCmd represents the checkUserAvailability command
var checkUserAvailabilityCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.CheckUserAvailability(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkUserAvailabilityCmd)
	checkUserAvailabilityCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = checkUserAvailabilityCmd.MarkFlagRequired("namespace")
	checkUserAvailabilityCmd.Flags().StringP("field", "f", " ", "Field")
	_ = checkUserAvailabilityCmd.MarkFlagRequired("field")
	checkUserAvailabilityCmd.Flags().StringP("query", "q", " ", "Query")
	_ = checkUserAvailabilityCmd.MarkFlagRequired("query")
}
