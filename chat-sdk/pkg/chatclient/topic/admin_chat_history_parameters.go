// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminChatHistoryParams creates a new AdminChatHistoryParams object
// with the default values initialized.
func NewAdminChatHistoryParams() *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminChatHistoryParamsWithTimeout creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminChatHistoryParamsWithTimeout(timeout time.Duration) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		timeout: timeout,
	}
}

// NewAdminChatHistoryParamsWithContext creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminChatHistoryParamsWithContext(ctx context.Context) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		Context: ctx,
	}
}

// NewAdminChatHistoryParamsWithHTTPClient creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminChatHistoryParamsWithHTTPClient(client *http.Client) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{
		HTTPClient: client,
	}
}

/*AdminChatHistoryParams contains all the parameters to send to the API endpoint
for the admin chat history operation typically these are written to a http.Request
*/
type AdminChatHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ChatID
	  chat ID of chat

	*/
	ChatID []string
	/*EndCreatedAt
	  end date

	*/
	EndCreatedAt *int64
	/*Keyword
	  keyword containing in message

	*/
	Keyword *string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*Order
	  anyof: createdAt:asc / createdAt:desc

	*/
	Order *string
	/*SenderUserID
	  sender user ID

	*/
	SenderUserID *string
	/*ShardID
	  shard id

	*/
	ShardID *string
	/*StartCreatedAt
	  start date

	*/
	StartCreatedAt *int64
	/*Topic
	  topic ID that receive the chat

	*/
	Topic []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin chat history params
func (o *AdminChatHistoryParams) WithTimeout(timeout time.Duration) *AdminChatHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin chat history params
func (o *AdminChatHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin chat history params
func (o *AdminChatHistoryParams) WithContext(ctx context.Context) *AdminChatHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin chat history params
func (o *AdminChatHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin chat history params
func (o *AdminChatHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin chat history params
func (o *AdminChatHistoryParams) WithHTTPClient(client *http.Client) *AdminChatHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin chat history params
func (o *AdminChatHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin chat history params
func (o *AdminChatHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin chat history params
func (o *AdminChatHistoryParams) WithNamespace(namespace string) *AdminChatHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin chat history params
func (o *AdminChatHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChatID adds the chatID to the admin chat history params
func (o *AdminChatHistoryParams) WithChatID(chatID []string) *AdminChatHistoryParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the admin chat history params
func (o *AdminChatHistoryParams) SetChatID(chatID []string) {
	o.ChatID = chatID
}

// WithEndCreatedAt adds the endCreatedAt to the admin chat history params
func (o *AdminChatHistoryParams) WithEndCreatedAt(endCreatedAt *int64) *AdminChatHistoryParams {
	o.SetEndCreatedAt(endCreatedAt)
	return o
}

// SetEndCreatedAt adds the endCreatedAt to the admin chat history params
func (o *AdminChatHistoryParams) SetEndCreatedAt(endCreatedAt *int64) {
	o.EndCreatedAt = endCreatedAt
}

// WithKeyword adds the keyword to the admin chat history params
func (o *AdminChatHistoryParams) WithKeyword(keyword *string) *AdminChatHistoryParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the admin chat history params
func (o *AdminChatHistoryParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the admin chat history params
func (o *AdminChatHistoryParams) WithLimit(limit *int64) *AdminChatHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin chat history params
func (o *AdminChatHistoryParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin chat history params
func (o *AdminChatHistoryParams) WithOffset(offset *int64) *AdminChatHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin chat history params
func (o *AdminChatHistoryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin chat history params
func (o *AdminChatHistoryParams) WithOrder(order *string) *AdminChatHistoryParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin chat history params
func (o *AdminChatHistoryParams) SetOrder(order *string) {
	o.Order = order
}

// WithSenderUserID adds the senderUserID to the admin chat history params
func (o *AdminChatHistoryParams) WithSenderUserID(senderUserID *string) *AdminChatHistoryParams {
	o.SetSenderUserID(senderUserID)
	return o
}

// SetSenderUserID adds the senderUserId to the admin chat history params
func (o *AdminChatHistoryParams) SetSenderUserID(senderUserID *string) {
	o.SenderUserID = senderUserID
}

// WithShardID adds the shardID to the admin chat history params
func (o *AdminChatHistoryParams) WithShardID(shardID *string) *AdminChatHistoryParams {
	o.SetShardID(shardID)
	return o
}

// SetShardID adds the shardId to the admin chat history params
func (o *AdminChatHistoryParams) SetShardID(shardID *string) {
	o.ShardID = shardID
}

// WithStartCreatedAt adds the startCreatedAt to the admin chat history params
func (o *AdminChatHistoryParams) WithStartCreatedAt(startCreatedAt *int64) *AdminChatHistoryParams {
	o.SetStartCreatedAt(startCreatedAt)
	return o
}

// SetStartCreatedAt adds the startCreatedAt to the admin chat history params
func (o *AdminChatHistoryParams) SetStartCreatedAt(startCreatedAt *int64) {
	o.StartCreatedAt = startCreatedAt
}

// WithTopic adds the topic to the admin chat history params
func (o *AdminChatHistoryParams) WithTopic(topic []string) *AdminChatHistoryParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin chat history params
func (o *AdminChatHistoryParams) SetTopic(topic []string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminChatHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesChatID := o.ChatID

	joinedChatID := swag.JoinByFormat(valuesChatID, "multi")
	// query array param chatId
	if err := r.SetQueryParam("chatId", joinedChatID...); err != nil {
		return err
	}

	if o.EndCreatedAt != nil {

		// query param endCreatedAt
		var qrEndCreatedAt int64
		if o.EndCreatedAt != nil {
			qrEndCreatedAt = *o.EndCreatedAt
		}
		qEndCreatedAt := swag.FormatInt64(qrEndCreatedAt)
		if qEndCreatedAt != "" {
			if err := r.SetQueryParam("endCreatedAt", qEndCreatedAt); err != nil {
				return err
			}
		}

	}

	if o.Keyword != nil {

		// query param keyword
		var qrKeyword string
		if o.Keyword != nil {
			qrKeyword = *o.Keyword
		}
		qKeyword := qrKeyword
		if qKeyword != "" {
			if err := r.SetQueryParam("keyword", qKeyword); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.SenderUserID != nil {

		// query param senderUserId
		var qrSenderUserID string
		if o.SenderUserID != nil {
			qrSenderUserID = *o.SenderUserID
		}
		qSenderUserID := qrSenderUserID
		if qSenderUserID != "" {
			if err := r.SetQueryParam("senderUserId", qSenderUserID); err != nil {
				return err
			}
		}

	}

	if o.ShardID != nil {

		// query param shardId
		var qrShardID string
		if o.ShardID != nil {
			qrShardID = *o.ShardID
		}
		qShardID := qrShardID
		if qShardID != "" {
			if err := r.SetQueryParam("shardId", qShardID); err != nil {
				return err
			}
		}

	}

	if o.StartCreatedAt != nil {

		// query param startCreatedAt
		var qrStartCreatedAt int64
		if o.StartCreatedAt != nil {
			qrStartCreatedAt = *o.StartCreatedAt
		}
		qStartCreatedAt := swag.FormatInt64(qrStartCreatedAt)
		if qStartCreatedAt != "" {
			if err := r.SetQueryParam("startCreatedAt", qStartCreatedAt); err != nil {
				return err
			}
		}

	}

	valuesTopic := o.Topic

	joinedTopic := swag.JoinByFormat(valuesTopic, "multi")
	// query array param topic
	if err := r.SetQueryParam("topic", joinedTopic...); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
