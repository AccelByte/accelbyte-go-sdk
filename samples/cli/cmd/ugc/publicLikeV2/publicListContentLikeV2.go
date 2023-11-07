// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicLikeV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListContentLikeV2Cmd represents the PublicListContentLikeV2 command
var PublicListContentLikeV2Cmd = &cobra.Command{
	Use:   "publicListContentLikeV2",
	Short: "Public list content like V2",
	Long:  `Public list content like V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeV2Service := &ugc.PublicLikeV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_like_v2.PublicListContentLikeV2Params{
			ContentID: contentId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicLikeV2Service.PublicListContentLikeV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListContentLikeV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicListContentLikeV2Cmd.MarkFlagRequired("contentId")
	PublicListContentLikeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListContentLikeV2Cmd.MarkFlagRequired("namespace")
	PublicListContentLikeV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicListContentLikeV2Cmd.Flags().Int64("offset", 0, "Offset")
	PublicListContentLikeV2Cmd.Flags().String("sortBy", "", "Sort by")
}
