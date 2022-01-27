// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

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

// addUserPermissionCmd represents the addUserPermission command
var addUserPermissionCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AddUserPermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addUserPermissionCmd)
	addUserPermissionCmd.Flags().StringP("body", "by", " ", "Body")
	_ = addUserPermissionCmd.MarkFlagRequired("body")
	addUserPermissionCmd.Flags().Int64P("action", "an", -1, "Action")
	_ = addUserPermissionCmd.MarkFlagRequired("action")
	addUserPermissionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = addUserPermissionCmd.MarkFlagRequired("namespace")
	addUserPermissionCmd.Flags().StringP("resource", "re", " ", "Resource")
	_ = addUserPermissionCmd.MarkFlagRequired("resource")
	addUserPermissionCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = addUserPermissionCmd.MarkFlagRequired("userId")
}
