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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateUserDeletionStatusV3Cmd represents the AdminUpdateUserDeletionStatusV3 command
var AdminUpdateUserDeletionStatusV3Cmd = &cobra.Command{
	Use:   "adminUpdateUserDeletionStatusV3",
	Short: "Admin update user deletion status V3",
	Long:  `Admin update user deletion status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpdateUserDeletionStatusRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserDeletionStatusV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminUpdateUserDeletionStatusV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminUpdateUserDeletionStatusV3Cmd.Flags().StringP("body", "", " ", "Body")
	_ = AdminUpdateUserDeletionStatusV3Cmd.MarkFlagRequired("body")
	AdminUpdateUserDeletionStatusV3Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminUpdateUserDeletionStatusV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserDeletionStatusV3Cmd.Flags().StringP("userId", "", " ", "User id")
	_ = AdminUpdateUserDeletionStatusV3Cmd.MarkFlagRequired("userId")
}
