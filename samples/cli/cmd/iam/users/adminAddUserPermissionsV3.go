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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminAddUserPermissionsV3Cmd represents the adminAddUserPermissionsV3 command
var adminAddUserPermissionsV3Cmd = &cobra.Command{
	Use:   "adminAddUserPermissionsV3",
	Short: "Admin add user permissions V3",
	Long:  `Admin add user permissions V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminAddUserPermissionsV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminAddUserPermissionsV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminAddUserPermissionsV3Cmd)
	adminAddUserPermissionsV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminAddUserPermissionsV3Cmd.MarkFlagRequired("body")
	adminAddUserPermissionsV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminAddUserPermissionsV3Cmd.MarkFlagRequired("namespace")
	adminAddUserPermissionsV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminAddUserPermissionsV3Cmd.MarkFlagRequired("userId")
}
