// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTags

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateTagCmd represents the AdminCreateTag command
var AdminCreateTagCmd = &cobra.Command{
	Use:   "adminCreateTag",
	Short: "Admin create tag",
	Long:  `Admin create tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagsService := &inventory.AdminTagsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsCreateTagReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_tags.AdminCreateTagParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminTagsService.AdminCreateTagShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateTagCmd.Flags().String("body", "", "Body")
	_ = AdminCreateTagCmd.MarkFlagRequired("body")
	AdminCreateTagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateTagCmd.MarkFlagRequired("namespace")
}
