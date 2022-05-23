// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSlugTemplateCmd represents the GetSlugTemplate command
var GetSlugTemplateCmd = &cobra.Command{
	Use:   "getSlugTemplate",
	Short: "Get slug template",
	Long:  `Get slug template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &notification.GetSlugTemplateParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
			After:        &after,
			Before:       &before,
			Limit:        &limit,
		}
		ok, err := notificationService.GetSlugTemplateShort(input)
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
	GetSlugTemplateCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSlugTemplateCmd.MarkFlagRequired("namespace")
	GetSlugTemplateCmd.Flags().String("templateSlug", "", "Template slug")
	_ = GetSlugTemplateCmd.MarkFlagRequired("templateSlug")
	GetSlugTemplateCmd.Flags().String("after", "0", "After")
	GetSlugTemplateCmd.Flags().String("before", "0", "Before")
	GetSlugTemplateCmd.Flags().Int64("limit", 20, "Limit")
}
