// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateUserRoleV4Cmd represents the adminUpdateUserRoleV4 command
var adminUpdateUserRoleV4Cmd = &cobra.Command{
	Use:   "adminUpdateUserRoleV4",
	Short: "Admin update user role V4",
	Long:  `Admin update user role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelAddUserRoleV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminUpdateUserRoleV4Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersV4Service.AdminUpdateUserRoleV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateUserRoleV4Cmd)
	adminUpdateUserRoleV4Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateUserRoleV4Cmd.MarkFlagRequired("body")
	adminUpdateUserRoleV4Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateUserRoleV4Cmd.MarkFlagRequired("namespace")
	adminUpdateUserRoleV4Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUpdateUserRoleV4Cmd.MarkFlagRequired("userId")
}
