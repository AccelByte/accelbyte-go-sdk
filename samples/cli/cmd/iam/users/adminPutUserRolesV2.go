// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminPutUserRolesV2Cmd represents the adminPutUserRolesV2 command
var adminPutUserRolesV2Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminPutUserRolesV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPutUserRolesV2Cmd)
	adminPutUserRolesV2Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminPutUserRolesV2Cmd.MarkFlagRequired("body")
	adminPutUserRolesV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminPutUserRolesV2Cmd.MarkFlagRequired("namespace")
	adminPutUserRolesV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminPutUserRolesV2Cmd.MarkFlagRequired("userId")
}
