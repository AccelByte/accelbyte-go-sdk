// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getTemplateSlugLocalizationsTemplateV1AdminCmd represents the getTemplateSlugLocalizationsTemplateV1Admin command
var getTemplateSlugLocalizationsTemplateV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetTemplateSlugLocalizationsTemplateV1Admin(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getTemplateSlugLocalizationsTemplateV1AdminCmd)
	getTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("namespace")
	getTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = getTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("templateSlug")
	getTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().StringP("after", "ar", "0", "After")
	getTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().StringP("before", "be", "0", "Before")
	getTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().Int64P("limit", "lt", 20, "Limit")
}
