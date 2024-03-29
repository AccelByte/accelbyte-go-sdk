// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAdminInvitationV3Cmd represents the GetAdminInvitationV3 command
var GetAdminInvitationV3Cmd = &cobra.Command{
	Use:   "getAdminInvitationV3",
	Short: "Get admin invitation V3",
	Long:  `Get admin invitation V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		invitationId, _ := cmd.Flags().GetString("invitationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.GetAdminInvitationV3Params{
			InvitationID: invitationId,
			Namespace:    namespace,
		}
		ok, errOK := usersService.GetAdminInvitationV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAdminInvitationV3Cmd.Flags().String("invitationId", "", "Invitation id")
	_ = GetAdminInvitationV3Cmd.MarkFlagRequired("invitationId")
	GetAdminInvitationV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAdminInvitationV3Cmd.MarkFlagRequired("namespace")
}
