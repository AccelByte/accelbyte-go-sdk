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

// SaveUserPermissionCmd represents the SaveUserPermission command
var SaveUserPermissionCmd = &cobra.Command{
	Use:   "saveUserPermission",
	Short: "Save user permission",
	Long:  `Save user permission`,
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
		input := &users.SaveUserPermissionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.SaveUserPermissionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SaveUserPermissionCmd.Flags().StringP("body", "", "", "Body")
	_ = SaveUserPermissionCmd.MarkFlagRequired("body")
	SaveUserPermissionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SaveUserPermissionCmd.MarkFlagRequired("namespace")
	SaveUserPermissionCmd.Flags().StringP("userId", "", "", "User id")
	_ = SaveUserPermissionCmd.MarkFlagRequired("userId")
}
