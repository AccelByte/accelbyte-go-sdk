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

// AdminUpdateUserV2Cmd represents the AdminUpdateUserV2 command
var AdminUpdateUserV2Cmd = &cobra.Command{
	Use:   "adminUpdateUserV2",
	Short: "Admin update user V2",
	Long:  `Admin update user V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersService.AdminUpdateUserV2Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminUpdateUserV2Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateUserV2Cmd.MarkFlagRequired("body")
	AdminUpdateUserV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateUserV2Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminUpdateUserV2Cmd.MarkFlagRequired("userId")
}
