// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicFollow

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPublicFollowersCmd represents the GetPublicFollowers command
var GetPublicFollowersCmd = &cobra.Command{
	Use:   "getPublicFollowers",
	Short: "Get public followers",
	Long:  `Get public followers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_follow.GetPublicFollowersParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicFollowService.GetPublicFollowersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPublicFollowersCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublicFollowersCmd.MarkFlagRequired("namespace")
	GetPublicFollowersCmd.Flags().String("userId", "", "User id")
	_ = GetPublicFollowersCmd.MarkFlagRequired("userId")
	GetPublicFollowersCmd.Flags().Int64("limit", 20, "Limit")
	GetPublicFollowersCmd.Flags().Int64("offset", 0, "Offset")
}
