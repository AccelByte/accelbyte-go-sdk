// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addUserRolesCmd represents the addUserRoles command
var addUserRolesCmd = &cobra.Command{
	Use:   "addUserRoles",
	Short: "add user roles",
	Long:  `add user roles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		bodyString := cmd.Flag("body").Value.String()
		var body []*iamclientmodels.ModelNamespaceRoleRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminSaveUserRoleV3(namespace, userId, body)
		if err != nil {
			return err
		}
		logrus.Info("User roles successfully added")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addUserRolesCmd)
	addUserRolesCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	addUserRolesCmd.Flags().StringP("userId", "u", "", "User ID")
	addUserRolesCmd.Flags().StringP("body", "b", "", "Role's roles body. In json format, example: '{\"key1\", \"value1\"}'")
	addUserRolesCmd.MarkFlagRequired("body")
}
