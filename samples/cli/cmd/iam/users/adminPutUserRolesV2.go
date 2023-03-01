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

// AdminPutUserRolesV2Cmd represents the AdminPutUserRolesV2 command
var AdminPutUserRolesV2Cmd = &cobra.Command{
	Use:   "adminPutUserRolesV2",
	Short: "Admin put user roles V2",
	Long:  `Admin put user roles V2`,
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
		input := &users.AdminPutUserRolesV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminPutUserRolesV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPutUserRolesV2Cmd.Flags().String("body", "", "Body")
	_ = AdminPutUserRolesV2Cmd.MarkFlagRequired("body")
	AdminPutUserRolesV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutUserRolesV2Cmd.MarkFlagRequired("namespace")
	AdminPutUserRolesV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutUserRolesV2Cmd.MarkFlagRequired("userId")
}
