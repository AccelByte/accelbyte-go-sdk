// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeAUserCmd represents the RevokeAUser command
var RevokeAUserCmd = &cobra.Command{
	Use:   "revokeAUser",
	Short: "Revoke A user",
	Long:  `Revoke A user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userID, _ := cmd.Flags().GetString("userID")
		input := &o_auth.RevokeAUserParams{
			UserID: userID,
		}
		errOK := oAuthService.RevokeAUserShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeAUserCmd.Flags().String("userID", "", "User ID")
	_ = RevokeAUserCmd.MarkFlagRequired("userID")
}
