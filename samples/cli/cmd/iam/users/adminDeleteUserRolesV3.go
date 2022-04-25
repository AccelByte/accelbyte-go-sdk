// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteUserRolesV3Cmd represents the AdminDeleteUserRolesV3 command
var AdminDeleteUserRolesV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserRolesV3",
	Short: "Admin delete user roles V3",
	Long:  `Admin delete user roles V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserRolesV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminDeleteUserRolesV3Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteUserRolesV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("body")
	AdminDeleteUserRolesV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserRolesV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("userId")
}
