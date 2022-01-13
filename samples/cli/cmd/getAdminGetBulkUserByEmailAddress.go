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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getAdminGetBulkUserByEmailAddressCmd represents the getAdminGetBulkUserByEmailAddress command
var getAdminGetBulkUserByEmailAddressCmd = &cobra.Command{
	Use:   "getAdminGetBulkUserByEmailAddress",
	Short: "get Admin Get Bulk User By Email Address",
	Long:  `get Admin Get Bulk User By Email Address`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		listEmailAddressRequestsString := cmd.Flag("listEmailAddressRequests").Value.String()
		var listEmailAddressRequests []string
		err := json.Unmarshal([]byte(listEmailAddressRequestsString), &listEmailAddressRequests)
		if err != nil {
			return err
		}
		input := &users.AdminGetBulkUserByEmailAddressV3Params{
			Body: &iamclientmodels.ModelListEmailAddressRequest{
				ListEmailAddressRequest: listEmailAddressRequests},
			Namespace: namespace,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		user, err := userService.AdminGetBulkUserByEmailAddressV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(user, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	RootCmd.AddCommand(getAdminGetBulkUserByEmailAddressCmd)
	getAdminGetBulkUserByEmailAddressCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getAdminGetBulkUserByEmailAddressCmd.MarkFlagRequired("namespace")
	getAdminGetBulkUserByEmailAddressCmd.Flags().StringP("listEmailAddressRequests", "e", "", "list Email Address Requests, value in json. example: '[\"12345\", \"12346\", \"12347\"]'")
	_ = getAdminGetBulkUserByEmailAddressCmd.MarkFlagRequired("listEmailAddressRequests")
}
