// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRemoveUserRoleV4Cmd represents the AdminRemoveUserRoleV4 command
var AdminRemoveUserRoleV4Cmd = &cobra.Command{
	Use:   "adminRemoveUserRoleV4",
	Short: "Admin remove user role V4",
	Long:  `Admin remove user role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRemoveUserRoleV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminRemoveUserRoleV4Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersV4Service.AdminRemoveUserRoleV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminRemoveUserRoleV4Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminRemoveUserRoleV4Cmd.MarkFlagRequired("body")
	AdminRemoveUserRoleV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminRemoveUserRoleV4Cmd.MarkFlagRequired("namespace")
	AdminRemoveUserRoleV4Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminRemoveUserRoleV4Cmd.MarkFlagRequired("userId")
}
