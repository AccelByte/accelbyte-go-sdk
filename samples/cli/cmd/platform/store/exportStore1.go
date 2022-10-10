// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExportStore1Cmd represents the ExportStore1 command
var ExportStore1Cmd = &cobra.Command{
	Use:   "exportStore1",
	Short: "Export store 1",
	Long:  `Export store 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ExportStoreRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &store.ExportStore1Params{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		errInput := storeService.ExportStore1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ExportStore1Cmd.Flags().String("body", "", "Body")
	ExportStore1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ExportStore1Cmd.MarkFlagRequired("namespace")
	ExportStore1Cmd.Flags().String("storeId", "", "Store id")
	_ = ExportStore1Cmd.MarkFlagRequired("storeId")
}
