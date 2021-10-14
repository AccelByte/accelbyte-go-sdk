// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getAdminSearchUserCmd represents the getAdminSearchUser command
var getAdminSearchUserCmd = &cobra.Command{
	Use:   "getAdminSearchUser",
	Short: "get Admin Search User",
	Long:  `get Admin Search User`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		by := cmd.Flag("by").Value.String()
		endDate := cmd.Flag("endDate").Value.String()
		offset := cmd.Flag("offset").Value.String()
		query := cmd.Flag("query").Value.String()
		startDate := cmd.Flag("startDate").Value.String()
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		input := &users.AdminSearchUserV3Params{
			By:        &by,
			EndDate:   &endDate,
			Limit:     &limit,
			Namespace: namespace,
			Offset:    &offset,
			Query:     &query,
			StartDate: &startDate,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		user, err := userService.AdminSearchUserV3(input)
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
	rootCmd.AddCommand(getAdminSearchUserCmd)
	getAdminSearchUserCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getAdminSearchUserCmd.MarkFlagRequired("namespace")
	getAdminSearchUserCmd.Flags().StringP("by", "b", "", "by")
	getAdminSearchUserCmd.Flags().StringP("offset", "o", "", "offset")
	getAdminSearchUserCmd.Flags().StringP("endDate", "e", "", "end date")
	getAdminSearchUserCmd.Flags().StringP("query", "q", "", "query")
	getAdminSearchUserCmd.Flags().StringP("startDate", "s", "", "start date")
	getAdminSearchUserCmd.Flags().Int64P("limit", "l", 20, "Pagination limit")

}
