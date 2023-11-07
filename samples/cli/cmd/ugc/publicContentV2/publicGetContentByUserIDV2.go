// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetContentByUserIDV2Cmd represents the PublicGetContentByUserIDV2 command
var PublicGetContentByUserIDV2Cmd = &cobra.Command{
	Use:   "publicGetContentByUserIDV2",
	Short: "Public get content by user IDV2",
	Long:  `Public get content by user IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_content_v2.PublicGetContentByUserIDV2Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicContentV2Service.PublicGetContentByUserIDV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentByUserIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentByUserIDV2Cmd.MarkFlagRequired("namespace")
	PublicGetContentByUserIDV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetContentByUserIDV2Cmd.MarkFlagRequired("userId")
	PublicGetContentByUserIDV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetContentByUserIDV2Cmd.Flags().Int64("offset", 0, "Offset")
	PublicGetContentByUserIDV2Cmd.Flags().String("sortBy", "", "Sort by")
}
