// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicUpdateAttributeCmd represents the publicUpdateAttribute command
var publicUpdateAttributeCmd = &cobra.Command{
	Use:   "publicUpdateAttribute",
	Short: "Public update attribute",
	Long:  `Public update attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		attributeName, _ := cmd.Flags().GetString("attributeName")
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.Attribute
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &game_profile.PublicUpdateAttributeParams{
			Body:          body,
			AttributeName: attributeName,
			Namespace:     namespace,
			ProfileID:     profileId,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicUpdateAttribute(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdateAttributeCmd)
	publicUpdateAttributeCmd.Flags().StringP("body", "by", " ", "Body")
	publicUpdateAttributeCmd.Flags().StringP("attributeName", "ae", " ", "Attribute name")
	_ = publicUpdateAttributeCmd.MarkFlagRequired("attributeName")
	publicUpdateAttributeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicUpdateAttributeCmd.MarkFlagRequired("namespace")
	publicUpdateAttributeCmd.Flags().StringP("profileId", "pd", " ", "Profile id")
	_ = publicUpdateAttributeCmd.MarkFlagRequired("profileId")
	publicUpdateAttributeCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicUpdateAttributeCmd.MarkFlagRequired("userId")
}
