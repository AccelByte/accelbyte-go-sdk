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

// GetPublicFollowingCmd represents the GetPublicFollowing command
var GetPublicFollowingCmd = &cobra.Command{
	Use:   "getPublicFollowing",
	Short: "Get public following",
	Long:  `Get public following`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_follow.GetPublicFollowingParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicFollowService.GetPublicFollowingShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPublicFollowingCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublicFollowingCmd.MarkFlagRequired("namespace")
	GetPublicFollowingCmd.Flags().String("userId", "", "User id")
	_ = GetPublicFollowingCmd.MarkFlagRequired("userId")
	GetPublicFollowingCmd.Flags().Int64("limit", 20, "Limit")
	GetPublicFollowingCmd.Flags().Int64("offset", 0, "Offset")
}
