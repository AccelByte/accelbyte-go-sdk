// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getAdminInvitationV3Cmd represents the getAdminInvitationV3 command
var getAdminInvitationV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetAdminInvitationV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getAdminInvitationV3Cmd)
	getAdminInvitationV3Cmd.Flags().StringP("invitationId", "i", " ", "Invitation id")
	_ = getAdminInvitationV3Cmd.MarkFlagRequired("invitationId")
	getAdminInvitationV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getAdminInvitationV3Cmd.MarkFlagRequired("namespace")
}