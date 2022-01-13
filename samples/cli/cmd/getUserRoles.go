// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserRolesCmd represents the getUserRoles command
var getUserRolesCmd = &cobra.Command{
	Use:   "getUserRoles",
	Short: "Get user roles",
	Long:  `Get user roles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		after := cmd.Flag("after").Value.String()
		before := cmd.Flag("before").Value.String()
		isWildCard, _ := cmd.Flags().GetBool("isWildCard")
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		roleService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &roles.AdminGetRolesV3Params{
			After:      &after,
			Before:     &before,
			IsWildcard: &isWildCard,
			Limit:      &limit,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		roles, err := roleService.AdminGetRolesV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(roles, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	RootCmd.AddCommand(getUserRolesCmd)
	getUserRolesCmd.Flags().BoolP("isWildCard", "w", true, "isWildCard. Default true.")
	getUserRolesCmd.Flags().StringP("after", "a", "", "After")
	getUserRolesCmd.Flags().StringP("before", "b", "", "Before")
	getUserRolesCmd.Flags().Int64P("limit", "", 20, "Pagination limit")
}
