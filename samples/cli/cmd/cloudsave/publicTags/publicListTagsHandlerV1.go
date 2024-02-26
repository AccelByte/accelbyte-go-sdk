// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicTags

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_tags"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListTagsHandlerV1Cmd represents the PublicListTagsHandlerV1 command
var PublicListTagsHandlerV1Cmd = &cobra.Command{
	Use:   "publicListTagsHandlerV1",
	Short: "Public list tags handler V1",
	Long:  `Public list tags handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTagsService := &cloudsave.PublicTagsService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_tags.PublicListTagsHandlerV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicTagsService.PublicListTagsHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListTagsHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListTagsHandlerV1Cmd.MarkFlagRequired("namespace")
	PublicListTagsHandlerV1Cmd.Flags().Int64("limit", 20, "Limit")
	PublicListTagsHandlerV1Cmd.Flags().Int64("offset", 0, "Offset")
}
