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

// getAdminUserByUserIDCmd represents the getAdminUserByUserIDV3 command
var getAdminUserByUserIDCmd = &cobra.Command{
	Use:   "getAdminUserByUserID",
	Short: "get Admin User By User ID",
	Long:  `get Admin User By User ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		userService := &service.UserService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		user, err := userService.AdminGetUserByUserIDV3(namespace, userId)
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
	rootCmd.AddCommand(getAdminUserByUserIDCmd)
	getAdminUserByUserIDCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getAdminUserByUserIDCmd.MarkFlagRequired("namespace")
	getAdminUserByUserIDCmd.Flags().StringP("userId", "u", "", "User ID")
}
