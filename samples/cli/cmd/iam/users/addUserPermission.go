// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddUserPermissionCmd represents the AddUserPermission command
var AddUserPermissionCmd = &cobra.Command{
	Use:   "addUserPermission",
	Short: "Add user permission",
	Long:  `Add user permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpdatePermissionScheduleRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		action, _ := cmd.Flags().GetInt64("action")
		namespace, _ := cmd.Flags().GetString("namespace")
		resource, _ := cmd.Flags().GetString("resource")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AddUserPermissionParams{
			Body:      body,
			Action:    action,
			Namespace: namespace,
			Resource:  resource,
			UserID:    userId,
		}
		errInput := usersService.AddUserPermissionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AddUserPermissionCmd.Flags().String("body", "", "Body")
	_ = AddUserPermissionCmd.MarkFlagRequired("body")
	AddUserPermissionCmd.Flags().Int64("action", -1, "Action")
	_ = AddUserPermissionCmd.MarkFlagRequired("action")
	AddUserPermissionCmd.Flags().String("namespace", "", "Namespace")
	_ = AddUserPermissionCmd.MarkFlagRequired("namespace")
	AddUserPermissionCmd.Flags().String("resource", "", "Resource")
	_ = AddUserPermissionCmd.MarkFlagRequired("resource")
	AddUserPermissionCmd.Flags().String("userId", "", "User id")
	_ = AddUserPermissionCmd.MarkFlagRequired("userId")
}
