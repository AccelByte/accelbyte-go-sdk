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

// PublicGetLinkHeadlessAccountToMyAccountConflictV3Cmd represents the PublicGetLinkHeadlessAccountToMyAccountConflictV3 command
var PublicGetLinkHeadlessAccountToMyAccountConflictV3Cmd = &cobra.Command{
	Use:   "publicGetLinkHeadlessAccountToMyAccountConflictV3",
	Short: "Public get link headless account to my account conflict V3",
	Long:  `Public get link headless account to my account conflict V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		oneTimeLinkCode, _ := cmd.Flags().GetString("oneTimeLinkCode")
		input := &users.PublicGetLinkHeadlessAccountToMyAccountConflictV3Params{
			OneTimeLinkCode: oneTimeLinkCode,
		}
		ok, errOK := usersService.PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetLinkHeadlessAccountToMyAccountConflictV3Cmd.Flags().String("oneTimeLinkCode", "", "One time link code")
	_ = PublicGetLinkHeadlessAccountToMyAccountConflictV3Cmd.MarkFlagRequired("oneTimeLinkCode")
}
