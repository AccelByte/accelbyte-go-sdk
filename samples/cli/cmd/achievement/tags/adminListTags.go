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

// AdminListTagsCmd represents the AdminListTags command
var AdminListTagsCmd = &cobra.Command{
	Use:   "adminListTags",
	Short: "Admin list tags",
	Long:  `Admin list tags`,
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
		input := &tags.AdminListTagsParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, err := tagsService.AdminListTagsShort(input)
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
	AdminListTagsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListTagsCmd.MarkFlagRequired("namespace")
	AdminListTagsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListTagsCmd.Flags().String("name", "", "Name")
	AdminListTagsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListTagsCmd.Flags().String("sortBy", "", "Sort by")
}
