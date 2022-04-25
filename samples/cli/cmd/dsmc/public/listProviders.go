// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListProvidersCmd represents the ListProviders command
var ListProvidersCmd = &cobra.Command{
	Use:   "listProviders",
	Short: "List providers",
	Long:  `List providers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &dsmc.PublicService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public.ListProvidersParams{}
		ok, err := publicService.ListProvidersShort(input, nil)
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
}
