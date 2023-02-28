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

// RevokeUserCmd represents the RevokeUser command
var RevokeUserCmd = &cobra.Command{
	Use:   "revokeUser",
	Short: "Revoke user",
	Long:  `Revoke user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth.RevokeUserParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errOK := oAuthService.RevokeUserShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeUserCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserCmd.MarkFlagRequired("namespace")
	RevokeUserCmd.Flags().String("userId", "", "User id")
	_ = RevokeUserCmd.MarkFlagRequired("userId")
}
