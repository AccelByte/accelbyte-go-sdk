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

// AdminUpdateUserV3Cmd represents the AdminUpdateUserV3 command
var AdminUpdateUserV3Cmd = &cobra.Command{
	Use:   "adminUpdateUserV3",
	Short: "Admin update user V3",
	Long:  `Admin update user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminUpdateUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateUserV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserV3Cmd.MarkFlagRequired("body")
	AdminUpdateUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserV3Cmd.MarkFlagRequired("userId")
}
