// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tags

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/tags"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListTagsHandlerV1Cmd represents the AdminListTagsHandlerV1 command
var AdminListTagsHandlerV1Cmd = &cobra.Command{
	Use:   "adminListTagsHandlerV1",
	Short: "Admin list tags handler V1",
	Long:  `Admin list tags handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tagsService := &cloudsave.TagsService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &tags.AdminListTagsHandlerV1Params{
			Namespace: namespace,
		}
		ok, errOK := tagsService.AdminListTagsHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListTagsHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListTagsHandlerV1Cmd.MarkFlagRequired("namespace")
}
