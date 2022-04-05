// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package channelList

import (
	"context"
	"fmt"
	"log"
	"time"

	"github.com/go-redis/redis/v8"

	"aws-lambda/pkg/constants"
	"aws-lambda/pkg/title-matchmaking/models"
)

// Channel implements ChannelList DAO interface
type Channel struct {
	redisClient *redis.Client
}

// New creates new ChannelList
func New(redisClient *redis.Client) *Channel {
	return &Channel{
		redisClient: redisClient,
	}
}

// Save create new channelList or update old channelList with specified slug
func (dao *Channel) Save(channel models.Channel) error {
	if channel.Slug == "" {
		return fmt.Errorf("channelList slug should not be empty")
	}

	// we save channelList list to session because lobby service still retrieve data directly from session.
	err := dao.saveChannelListToRedis(channel)
	if err != nil {
		return err
	}

	return nil
}

func (dao *Channel) saveChannelListToRedis(channel models.Channel) error {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	res := dao.redisClient.SAdd(ctx, constants.ChannelListKey, channel.Slug)
	if res.Err() != nil && res.Err() != redis.Nil {
		log.Printf("failed to save to session. Error: %s", res.Err().Error())

		return res.Err()
	}

	return nil
}
