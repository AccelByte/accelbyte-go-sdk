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

// AdminCursorGetUserV3Cmd represents the AdminCursorGetUserV3 command
var AdminCursorGetUserV3Cmd = &cobra.Command{
	Use:   "adminCursorGetUserV3",
	Short: "Admin cursor get user V3",
	Long:  `Admin cursor get user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCursorGetUserRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminCursorGetUserV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminCursorGetUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminCursorGetUserV3Cmd.Flags().String("body", "", "Body")
	_ = AdminCursorGetUserV3Cmd.MarkFlagRequired("body")
	AdminCursorGetUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCursorGetUserV3Cmd.MarkFlagRequired("namespace")
}
