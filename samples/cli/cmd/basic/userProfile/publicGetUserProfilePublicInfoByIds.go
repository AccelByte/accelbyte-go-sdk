// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserProfilePublicInfoByIdsCmd represents the PublicGetUserProfilePublicInfoByIds command
var PublicGetUserProfilePublicInfoByIdsCmd = &cobra.Command{
	Use:   "publicGetUserProfilePublicInfoByIds",
	Short: "Public get user profile public info by ids",
	Long:  `Public get user profile public info by ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_profile.PublicGetUserProfilePublicInfoByIdsParams{
			Namespace: namespace,
			UserIds:   userIds,
		}
		ok, err := userProfileService.PublicGetUserProfilePublicInfoByIdsShort(input)
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
	PublicGetUserProfilePublicInfoByIdsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserProfilePublicInfoByIdsCmd.MarkFlagRequired("namespace")
	PublicGetUserProfilePublicInfoByIdsCmd.Flags().StringP("userIds", "", "", "User ids")
	_ = PublicGetUserProfilePublicInfoByIdsCmd.MarkFlagRequired("userIds")
}
