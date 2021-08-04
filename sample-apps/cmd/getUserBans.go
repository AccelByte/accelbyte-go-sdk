// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserBansCmd represents the getUserRoles command
var getUserBansCmd = &cobra.Command{
	Use:   "getUserBans",
	Short: "Get user bans",
	Long:  `Get user bans`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		after := cmd.Flag("after").Value.String()
		before := cmd.Flag("before").Value.String()
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		userService := &service.UserService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		users, err := userService.AdminGetUserBanV3(namespace, userId, &after, &before, &activeOnly, &limit)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(users, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserBansCmd)
	getUserBansCmd.Flags().StringP("userId", "u", "", "User ID")
	getUserBansCmd.MarkFlagRequired("userId")
	getUserBansCmd.Flags().StringP("namespace", "", "", "User namespace")
	getUserBansCmd.MarkFlagRequired("namespace")
	getUserBansCmd.Flags().BoolP("activeOnly", "w", true, "activeOnly. Default true.")
	getUserBansCmd.Flags().StringP("after", "a", "", "After")
	getUserBansCmd.Flags().StringP("before", "b", "", "Before")
	getUserBansCmd.Flags().Int64P("limit", "", 20, "Pagination limit")
}
