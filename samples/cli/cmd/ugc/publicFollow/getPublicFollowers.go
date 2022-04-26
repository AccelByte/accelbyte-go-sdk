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
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_follow.GetPublicFollowersParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := publicFollowService.GetPublicFollowersShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetPublicFollowersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPublicFollowersCmd.MarkFlagRequired("namespace")
	GetPublicFollowersCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetPublicFollowersCmd.MarkFlagRequired("userId")
	GetPublicFollowersCmd.Flags().StringP("limit", "", "20", "Limit")
	GetPublicFollowersCmd.Flags().StringP("offset", "", "0", "Offset")
}
