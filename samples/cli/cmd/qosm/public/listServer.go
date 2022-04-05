// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package public

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListServerCmd represents the ListServer command
var ListServerCmd = &cobra.Command{
	Use:   "listServer",
	Short: "List server",
	Long:  `List server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &qosm.PublicService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public.ListServerParams{}
		ok, err := publicService.ListServerShort(input)
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
