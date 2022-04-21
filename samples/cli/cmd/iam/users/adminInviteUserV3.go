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

// AdminInviteUserV3Cmd represents the AdminInviteUserV3 command
var AdminInviteUserV3Cmd = &cobra.Command{
	Use:   "adminInviteUserV3",
	Short: "Admin invite user V3",
	Long:  `Admin invite user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelInviteUserRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminInviteUserV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := usersService.AdminInviteUserV3Short(input)
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
	AdminInviteUserV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminInviteUserV3Cmd.MarkFlagRequired("body")
	AdminInviteUserV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminInviteUserV3Cmd.MarkFlagRequired("namespace")
}
