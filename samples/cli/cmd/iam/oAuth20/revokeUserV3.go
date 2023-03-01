// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeUserV3Cmd represents the RevokeUserV3 command
var RevokeUserV3Cmd = &cobra.Command{
	Use:   "revokeUserV3",
	Short: "Revoke user V3",
	Long:  `Revoke user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth2_0.RevokeUserV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		errOK := oAuth20Service.RevokeUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserV3Cmd.MarkFlagRequired("namespace")
	RevokeUserV3Cmd.Flags().String("userId", "", "User id")
	_ = RevokeUserV3Cmd.MarkFlagRequired("userId")
}
