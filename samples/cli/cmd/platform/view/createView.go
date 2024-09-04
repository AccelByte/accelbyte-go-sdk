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

// CreateViewCmd represents the CreateView command
var CreateViewCmd = &cobra.Command{
	Use:   "createView",
	Short: "Create view",
	Long:  `Create view`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ViewCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &view.CreateViewParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		created, errCreated := viewService.CreateViewShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateViewCmd.Flags().String("body", "", "Body")
	_ = CreateViewCmd.MarkFlagRequired("body")
	CreateViewCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateViewCmd.MarkFlagRequired("namespace")
	CreateViewCmd.Flags().String("storeId", "", "Store id")
	_ = CreateViewCmd.MarkFlagRequired("storeId")
}
