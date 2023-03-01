// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminExtensionCategoriesAndAutoModerationActions

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateExtensionCategoryCmd represents the AdminCreateExtensionCategory command
var AdminCreateExtensionCategoryCmd = &cobra.Command{
	Use:   "adminCreateExtensionCategory",
	Short: "Admin create extension category",
	Long:  `Admin create extension category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminExtensionCategoriesAndAutoModerationActionsService := &reporting.AdminExtensionCategoriesandAutoModerationActionsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiExtensionCategoryAPIRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &admin_extension_categories_and_auto_moderation_actions.AdminCreateExtensionCategoryParams{
			Body: body,
		}
		created, errCreated := adminExtensionCategoriesAndAutoModerationActionsService.AdminCreateExtensionCategoryShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateExtensionCategoryCmd.Flags().String("body", "", "Body")
	_ = AdminCreateExtensionCategoryCmd.MarkFlagRequired("body")
}
