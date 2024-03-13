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

// AdminGetNamespaceUserInvitationHistoryV4Cmd represents the AdminGetNamespaceUserInvitationHistoryV4 command
var AdminGetNamespaceUserInvitationHistoryV4Cmd = &cobra.Command{
	Use:   "adminGetNamespaceUserInvitationHistoryV4",
	Short: "Admin get namespace user invitation history V4",
	Long:  `Admin get namespace user invitation history V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &users_v4.AdminGetNamespaceUserInvitationHistoryV4Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := usersV4Service.AdminGetNamespaceUserInvitationHistoryV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetNamespaceUserInvitationHistoryV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetNamespaceUserInvitationHistoryV4Cmd.MarkFlagRequired("namespace")
	AdminGetNamespaceUserInvitationHistoryV4Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetNamespaceUserInvitationHistoryV4Cmd.Flags().Int64("offset", 0, "Offset")
}
