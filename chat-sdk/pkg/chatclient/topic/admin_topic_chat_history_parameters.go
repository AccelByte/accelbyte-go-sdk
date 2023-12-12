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

// NewAdminTopicChatHistoryParams creates a new AdminTopicChatHistoryParams object
// with the default values initialized.
func NewAdminTopicChatHistoryParams() *AdminTopicChatHistoryParams {
	var ()
	return &AdminTopicChatHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminTopicChatHistoryParamsWithTimeout creates a new AdminTopicChatHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminTopicChatHistoryParamsWithTimeout(timeout time.Duration) *AdminTopicChatHistoryParams {
	var ()
	return &AdminTopicChatHistoryParams{

		timeout: timeout,
	}
}

// NewAdminTopicChatHistoryParamsWithContext creates a new AdminTopicChatHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminTopicChatHistoryParamsWithContext(ctx context.Context) *AdminTopicChatHistoryParams {
	var ()
	return &AdminTopicChatHistoryParams{

		Context: ctx,
	}
}

// NewAdminTopicChatHistoryParamsWithHTTPClient creates a new AdminTopicChatHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminTopicChatHistoryParamsWithHTTPClient(client *http.Client) *AdminTopicChatHistoryParams {
	var ()
	return &AdminTopicChatHistoryParams{
		HTTPClient: client,
	}
}

/*AdminTopicChatHistoryParams contains all the parameters to send to the API endpoint
for the admin topic chat history operation typically these are written to a http.Request
*/
type AdminTopicChatHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that receive the chat

	*/
	Topic string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithTimeout(timeout time.Duration) *AdminTopicChatHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithContext(ctx context.Context) *AdminTopicChatHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithHTTPClient(client *http.Client) *AdminTopicChatHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithNamespace(namespace string) *AdminTopicChatHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithTopic(topic string) *AdminTopicChatHistoryParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetTopic(topic string) {
	o.Topic = topic
}

// WithEndCreatedAt adds the endCreatedAt to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithEndCreatedAt(endCreatedAt *int64) *AdminTopicChatHistoryParams {
	o.SetEndCreatedAt(endCreatedAt)
	return o
}

// SetEndCreatedAt adds the endCreatedAt to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetEndCreatedAt(endCreatedAt *int64) {
	o.EndCreatedAt = endCreatedAt
}

// WithKeyword adds the keyword to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithKeyword(keyword *string) *AdminTopicChatHistoryParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithLimit(limit *int64) *AdminTopicChatHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithOffset(offset *int64) *AdminTopicChatHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithOrder(order *string) *AdminTopicChatHistoryParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetOrder(order *string) {
	o.Order = order
}

// WithSenderUserID adds the senderUserID to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithSenderUserID(senderUserID *string) *AdminTopicChatHistoryParams {
	o.SetSenderUserID(senderUserID)
	return o
}

// SetSenderUserID adds the senderUserId to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetSenderUserID(senderUserID *string) {
	o.SenderUserID = senderUserID
}

// WithShardID adds the shardID to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithShardID(shardID *string) *AdminTopicChatHistoryParams {
	o.SetShardID(shardID)
	return o
}

// SetShardID adds the shardId to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetShardID(shardID *string) {
	o.ShardID = shardID
}

// WithStartCreatedAt adds the startCreatedAt to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) WithStartCreatedAt(startCreatedAt *int64) *AdminTopicChatHistoryParams {
	o.SetStartCreatedAt(startCreatedAt)
	return o
}

// SetStartCreatedAt adds the startCreatedAt to the admin topic chat history params
func (o *AdminTopicChatHistoryParams) SetStartCreatedAt(startCreatedAt *int64) {
	o.StartCreatedAt = startCreatedAt
}

// WriteToRequest writes these params to a swagger request
func (o *AdminTopicChatHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
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
