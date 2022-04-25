// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package keyGroup

import (
	"net/http"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadKeysCmd represents the UploadKeys command
var UploadKeysCmd = &cobra.Command{
	Use:   "uploadKeys",
	Short: "Upload keys",
	Long:  `Upload keys`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &key_group.UploadKeysParams{
			File:       file,
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
			HTTPClient: httpClient,
		}
		ok, err := keyGroupService.UploadKeysShort(input, nil)
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
	UploadKeysCmd.Flags().StringP("file", "", "", "File")
	UploadKeysCmd.Flags().StringP("keyGroupId", "", "", "Key group id")
	_ = UploadKeysCmd.MarkFlagRequired("keyGroupId")
	UploadKeysCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UploadKeysCmd.MarkFlagRequired("namespace")
}
