// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListInvitationHistoriesV4Cmd represents the AdminListInvitationHistoriesV4 command
var AdminListInvitationHistoriesV4Cmd = &cobra.Command{
	Use:   "adminListInvitationHistoriesV4",
	Short: "Admin list invitation histories V4",
	Long:  `Admin list invitation histories V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		limit, _ := cmd.Flags().GetInt64("limit")
		namespace, _ := cmd.Flags().GetString("namespace")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &users_v4.AdminListInvitationHistoriesV4Params{
			Limit:     &limit,
			Namespace: &namespace,
			Offset:    &offset,
		}
		ok, errOK := usersV4Service.AdminListInvitationHistoriesV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListInvitationHistoriesV4Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListInvitationHistoriesV4Cmd.Flags().String("namespace", "", "Namespace")
	AdminListInvitationHistoriesV4Cmd.Flags().Int64("offset", 0, "Offset")
}
