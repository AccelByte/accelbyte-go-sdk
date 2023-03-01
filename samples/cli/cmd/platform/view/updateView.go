// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package view

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/view"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateViewCmd represents the UpdateView command
var UpdateViewCmd = &cobra.Command{
	Use:   "updateView",
	Short: "Update view",
	Long:  `Update view`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		viewId, _ := cmd.Flags().GetString("viewId")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ViewUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &view.UpdateViewParams{
			Body:      body,
			Namespace: namespace,
			ViewID:    viewId,
			StoreID:   storeId,
		}
		ok, errOK := viewService.UpdateViewShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateViewCmd.Flags().String("body", "", "Body")
	UpdateViewCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateViewCmd.MarkFlagRequired("namespace")
	UpdateViewCmd.Flags().String("viewId", "", "View id")
	_ = UpdateViewCmd.MarkFlagRequired("viewId")
	UpdateViewCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateViewCmd.MarkFlagRequired("storeId")
}
