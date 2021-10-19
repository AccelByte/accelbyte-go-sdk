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

// deleteUserRolesCmd represents the deleteUserRoles command
var deleteUserRolesCmd = &cobra.Command{
	Use:   "deleteUserRoles",
	Short: "delete user roles",
	Long:  `delete user roles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users.AdminDeleteUserRolesV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminDeleteUserRolesV3(input)
		if err != nil {
			return err
		}
		logrus.Info("User permissions bulk successfully deleted")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteUserRolesCmd)
	deleteUserRolesCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	deleteUserRolesCmd.Flags().StringP("userId", "u", "", "User ID")
	deleteUserRolesCmd.Flags().StringP("body", "b", "", "Role's roles body. In json format, example: '{\"roleID1\", \"roleID2\"}'")
	_ = deleteUserRolesCmd.MarkFlagRequired("body")
}
