// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"net/http"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportStore1Cmd represents the ImportStore1 command
var ImportStore1Cmd = &cobra.Command{
	Use:   "importStore1",
	Short: "Import store 1",
	Long:  `Import store 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &store.ImportStore1Params{
			File:       file,
			Namespace:  namespace,
			StoreID:    &storeId,
			HTTPClient: httpClient,
		}
		ok, err := storeService.ImportStore1Short(input)
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
	ImportStore1Cmd.Flags().String("file", "", "File")
	ImportStore1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStore1Cmd.MarkFlagRequired("namespace")
	ImportStore1Cmd.Flags().String("storeId", "", "Store id")
}