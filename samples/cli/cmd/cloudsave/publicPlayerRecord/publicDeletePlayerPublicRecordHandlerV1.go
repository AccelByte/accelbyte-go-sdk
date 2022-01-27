// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicDeletePlayerPublicRecordHandlerV1Cmd represents the publicDeletePlayerPublicRecordHandlerV1 command
var publicDeletePlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "publicDeletePlayerPublicRecordHandlerV1",
	Short: "Public delete player public record handler V1",
	Long:  `Public delete player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicPlayerRecordService.PublicDeletePlayerPublicRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicDeletePlayerPublicRecordHandlerV1Cmd)
	publicDeletePlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = publicDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	publicDeletePlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
