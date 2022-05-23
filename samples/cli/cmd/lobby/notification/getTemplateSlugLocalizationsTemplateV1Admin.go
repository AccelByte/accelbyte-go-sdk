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

// GetTemplateSlugLocalizationsTemplateV1AdminCmd represents the GetTemplateSlugLocalizationsTemplateV1Admin command
var GetTemplateSlugLocalizationsTemplateV1AdminCmd = &cobra.Command{
	Use:   "getTemplateSlugLocalizationsTemplateV1Admin",
	Short: "Get template slug localizations template V1 admin",
	Long:  `Get template slug localizations template V1 admin`,
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
		input := &notification.GetTemplateSlugLocalizationsTemplateV1AdminParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
			After:        &after,
			Before:       &before,
			Limit:        &limit,
		}
		ok, err := notificationService.GetTemplateSlugLocalizationsTemplateV1AdminShort(input)
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
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("namespace")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("templateSlug", "", "Template slug")
	_ = GetTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("templateSlug")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("after", "0", "After")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("before", "0", "Before")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().Int64("limit", 20, "Limit")
}
