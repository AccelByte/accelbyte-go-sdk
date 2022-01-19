// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicPlatformUnlinkV3Cmd represents the publicPlatformUnlinkV3 command
var publicPlatformUnlinkV3Cmd = &cobra.Command{
	Use:   "publicPlatformUnlinkV3",
	Short: "Public platform unlink V3",
	Long:  `Public platform unlink V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUnlinkUserPlatformRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.PublicPlatformUnlinkV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicPlatformUnlinkV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicPlatformUnlinkV3Cmd)
	publicPlatformUnlinkV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = publicPlatformUnlinkV3Cmd.MarkFlagRequired("body")
	publicPlatformUnlinkV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicPlatformUnlinkV3Cmd.MarkFlagRequired("namespace")
	publicPlatformUnlinkV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = publicPlatformUnlinkV3Cmd.MarkFlagRequired("platformId")
}
