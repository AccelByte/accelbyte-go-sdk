// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tags

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/tags"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListTagsCmd represents the PublicListTags command
var PublicListTagsCmd = &cobra.Command{
	Use:   "publicListTags",
	Short: "Public list tags",
	Long:  `Public list tags`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tagsService := &achievement.TagsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &tags.PublicListTagsParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := tagsService.PublicListTagsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListTagsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListTagsCmd.MarkFlagRequired("namespace")
	PublicListTagsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListTagsCmd.Flags().String("name", "", "Name")
	PublicListTagsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListTagsCmd.Flags().String("sortBy", "", "Sort by")
}
