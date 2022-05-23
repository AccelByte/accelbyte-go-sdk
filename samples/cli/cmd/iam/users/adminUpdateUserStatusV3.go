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

// AdminUpdateUserStatusV3Cmd represents the AdminUpdateUserStatusV3 command
var AdminUpdateUserStatusV3Cmd = &cobra.Command{
	Use:   "adminUpdateUserStatusV3",
	Short: "Admin update user status V3",
	Long:  `Admin update user status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpdateUserStatusRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserStatusV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminUpdateUserStatusV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminUpdateUserStatusV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserStatusV3Cmd.MarkFlagRequired("body")
	AdminUpdateUserStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserStatusV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserStatusV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserStatusV3Cmd.MarkFlagRequired("userId")
}
